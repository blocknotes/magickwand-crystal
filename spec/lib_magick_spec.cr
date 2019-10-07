require "./spec_helper"

def init_wand(with_image : String = "")
  wand = LibMagick.newMagickWand
  LibMagick.magickReadImage(wand, with_image) unless with_image.empty?
  wand
end

describe "LibMagick" do
  Spec.before_each do
    File.delete(OUTPUT1_PNG) rescue nil
    File.delete(OUTPUT2_JPG) rescue nil
    LibMagick.magickWandGenesis
  end

  Spec.after_each do
    LibMagick.magickWandTerminus
    File.delete(OUTPUT2_JPG) rescue nil
    File.delete(OUTPUT1_PNG) rescue nil
  end

  it { LibMagick.isMagickWandInstantiated.should be_true } # NOTE: Travis says: "undefined IsMagickWandInstantiated" - check Magick version

  it "creates a wand and read an image" do
    (wand = LibMagick.newMagickWand).should_not be_nil
    LibMagick.isMagickWand(wand).should be_true
    wand = init_wand(with_image = TEST1_PNG)
    LibMagick.magickGetImageCompression(wand).should eq LibMagick::CompressionType::ZipCompression
    LibMagick.destroyMagickWand wand
    LibMagick.isMagickWand(wand).should be_false
  end

  context "with drawing functions" do
    it "draws a yellow rectangle on the center of an image" do
      wand = init_wand(with_image = TEST1_PNG)
      p_wand = LibMagick.newPixelWand
      d_wand = LibMagick.newDrawingWand
      px = LibMagick.magickGetImageWidth(wand) / 2
      py = LibMagick.magickGetImageHeight(wand) / 2
      LibMagick.pixelSetColor(p_wand, "yellow")
      LibMagick.drawSetStrokeOpacity(d_wand, 1)
      LibMagick.drawSetStrokeColor(d_wand, p_wand)
      LibMagick.drawSetStrokeWidth(d_wand, 4)
      LibMagick.drawSetStrokeAntialias(d_wand, true)
      LibMagick.drawSetFillColor(d_wand, p_wand)
      LibMagick.drawRectangle(d_wand, px - 50, py - 50, px + 50, py + 50)
      LibMagick.magickGetImagePixelColor(wand, px, py, p_wand)
      String.new(LibMagick.pixelGetColorAsNormalizedString(p_wand)).should eq "1,0,0" # check the pixel in the center: red
      LibMagick.magickDrawImage(wand, d_wand).should be_true
      LibMagick.magickGetImagePixelColor(wand, px, py, p_wand)
      String.new(LibMagick.pixelGetColorAsNormalizedString(p_wand)).should eq "1,1,0" # check the pixel in the center: yellow
      LibMagick.magickWriteImage(wand, OUTPUT1_PNG)
      LibMagick.destroyDrawingWand(d_wand)
      LibMagick.destroyPixelWand(p_wand)
      LibMagick.destroyMagickWand(wand)
    end
  end

  context "with image functions" do
    it "scales an image" do
      wand = init_wand(with_image = TEST2_JPG)
      w = LibMagick.magickGetImageWidth(wand)
      h = LibMagick.magickGetImageHeight(wand)
      LibMagick.magickScaleImage(wand, w / 2, h / 2)
      LibMagick.magickWriteImage(wand, OUTPUT2_JPG).should be_true
      # Read the new image
      wand2 = init_wand(with_image = OUTPUT2_JPG)
      LibMagick.magickGetImageWidth(wand2).should eq (w / 2).to_i
      LibMagick.magickGetImageHeight(wand2).should eq (h / 2).to_i
      LibMagick.destroyMagickWand(wand2)
      LibMagick.destroyMagickWand(wand)
    end

    it "resizes an image" do
      wand = init_wand(with_image = TEST2_JPG)
      w = LibMagick.magickGetImageWidth(wand)
      h = LibMagick.magickGetImageHeight(wand)
      LibMagick.magickResizeImage(wand, w / 2, h / 2, LibMagick::FilterType::LanczosFilter)
      LibMagick.magickWriteImage(wand, OUTPUT2_JPG)
      wand2 = LibMagick.newMagickWand
      LibMagick.magickReadImage(wand2, OUTPUT2_JPG)
      LibMagick.magickGetImageWidth(wand2).should eq (w / 2).to_i
      LibMagick.magickGetImageHeight(wand2).should eq (h / 2).to_i
      LibMagick.destroyMagickWand(wand2)
      LibMagick.destroyMagickWand(wand)
    end

    it "extends an image" do
      wand = init_wand(with_image = TEST2_JPG)
      w = LibMagick.magickGetImageWidth(wand)
      h = LibMagick.magickGetImageHeight(wand)
      p_wand = LibMagick.newPixelWand
      LibMagick.pixelSetColor(p_wand, "gold")
      LibMagick.magickSetImageBackgroundColor(wand, p_wand)
      LibMagick.magickExtentImage(wand, w + 100, h + 100, -50, -50)
      LibMagick.magickWriteImage(wand, OUTPUT2_JPG)
      LibMagick.destroyPixelWand(p_wand)
      # Read the new image
      wand2 = LibMagick.newMagickWand
      LibMagick.magickReadImage(wand2, OUTPUT2_JPG).should be_true
      String.new(LibMagick.magickGetImageFormat(wand2)).should eq "JPEG"
      LibMagick.magickGetImageWidth(wand2).should eq (w + 100)
      LibMagick.magickGetImageHeight(wand2).should eq (h + 100)
      LibMagick.destroyMagickWand(wand2)
      LibMagick.destroyMagickWand(wand)
    end

    it "flips an image" do
      wand = init_wand(with_image = TEST2_JPG)
      w = LibMagick.magickGetImageWidth(wand)
      h = LibMagick.magickGetImageHeight(wand)
      p_wand = LibMagick.newPixelWand
      LibMagick.magickGetImagePixelColor(wand, 10, 10, p_wand)
      prev_pixel = String.new(LibMagick.pixelGetColorAsNormalizedString(p_wand))
      LibMagick.magickFlipImage(wand).should be_true
      LibMagick.magickWriteImage(wand, OUTPUT1_PNG)
      # Read the new image
      wand2 = LibMagick.newMagickWand
      LibMagick.magickReadImage(wand2, OUTPUT1_PNG)
      LibMagick.magickGetImagePixelColor(wand2, 10, 10, p_wand)
      String.new(LibMagick.pixelGetColorAsNormalizedString(p_wand)).should_not eq prev_pixel
      LibMagick.magickGetImagePixelColor(wand2, 10, h - 11, p_wand)
      String.new(LibMagick.pixelGetColorAsNormalizedString(p_wand)).should eq prev_pixel
      LibMagick.destroyPixelWand(p_wand)
      LibMagick.destroyMagickWand(wand2)
      LibMagick.destroyMagickWand(wand)
    end

    it "floodfills a color in image" do
      wand = init_wand(with_image = TEST3_PNG)
      fc_wand = LibMagick.newPixelWand
      bc_wand = LibMagick.newPixelWand
      w = LibMagick.magickGetImageWidth(wand)
      h = LibMagick.magickGetImageHeight(wand)
      LibMagick.pixelSetColor(fc_wand, "#00ff00")
      LibMagick.pixelSetColor(bc_wand, "red")
      channel = LibMagick.parseChannelOption("rgba")
      LibMagick.magickFloodfillPaintImage(wand, fc_wand, 10, bc_wand, 150, 150, false).should be_true
      LibMagick.magickWriteImage(wand, OUTPUT1_PNG)
      LibMagick.destroyPixelWand(bc_wand)
      LibMagick.destroyPixelWand(fc_wand)
      # Read the new image
      wand2 = LibMagick.newMagickWand
      LibMagick.magickReadImage(wand2, OUTPUT1_PNG).should be_true
      String.new(LibMagick.magickGetImageFormat(wand2)).should eq "PNG" # check the format
      LibMagick.magickGetImageWidth(wand2).should eq (w)
      LibMagick.magickGetImageHeight(wand2).should eq (h)
      p_wand = LibMagick.newPixelWand
      LibMagick.magickGetImagePixelColor(wand2, 10, 10, p_wand)
      String.new(LibMagick.pixelGetColorAsNormalizedString(p_wand)).should eq "0,0,1" # check the pixel in the center: blue
      LibMagick.magickGetImagePixelColor(wand2, w / 2, h / 2, p_wand)
      String.new(LibMagick.pixelGetColorAsNormalizedString(p_wand)).should eq "0,1,0" # check the pixel in the center: green
      LibMagick.destroyPixelWand(p_wand)
      LibMagick.destroyMagickWand(wand2)
      LibMagick.destroyMagickWand(wand)
    end

    it "combines 2 images" do
      wand = init_wand(with_image = TEST2_JPG)
      w = LibMagick.magickGetImageWidth(wand)
      h = LibMagick.magickGetImageHeight(wand)
      wand2 = LibMagick.newMagickWand
      LibMagick.magickReadImage(wand2, TEST1_PNG)
      LibMagick.magickCompositeImage(wand, wand2, LibMagick::CompositeOperator::OverCompositeOp, true, 100, 100)
      LibMagick.magickWriteImage(wand, OUTPUT2_JPG)
      LibMagick.destroyMagickWand(wand2)
      # Read the new image
      wand3 = LibMagick.newMagickWand
      LibMagick.magickReadImage(wand3, OUTPUT2_JPG).should be_true
      LibMagick.magickGetImageWidth(wand3).should eq w
      LibMagick.magickGetImageHeight(wand3).should eq h
      LibMagick.destroyMagickWand(wand3)
      LibMagick.destroyMagickWand(wand)
    end

    it "converts an image to grayscale" do
      wand = init_wand(with_image = TEST2_JPG)
      LibMagick.magickGetImageColorspace(wand).should_not eq(LibMagick::ColorspaceType::GRAYColorspace)
      LibMagick.magickTransformImageColorspace(wand, LibMagick::ColorspaceType::GRAYColorspace).should be_true
      LibMagick.magickWriteImage(wand, OUTPUT2_JPG)
      LibMagick.magickGetImageColorspace(wand).should eq(LibMagick::ColorspaceType::GRAYColorspace)
      LibMagick.destroyMagickWand(wand)
    end
  end

  context "with options' functions" do
    it { LibMagick.isCommandOption("v").should be_false }
    it { LibMagick.isCommandOption("-v").should be_true }
  end

  context "with pixel iterator functions" do
    it "creates a valid pixel iterator" do
      wand = init_wand(with_image = TEST2_JPG)
      (iterator = LibMagick.newPixelIterator(wand)).should_not be_nil
      LibMagick.isPixelIterator(iterator).should be_true
      LibMagick.destroyPixelIterator(iterator)
      LibMagick.destroyMagickWand(wand)
    end
  end

  context "with pixel wand functions" do
    it "creates a valid pixel wand" do
      (p_wand = LibMagick.newPixelWand).should_not be_nil
      LibMagick.isPixelWand(p_wand).should be_true
      LibMagick.destroyPixelWand(p_wand)
    end
  end

  context "with properties' functions" do
    it "calls some informations' methods" do
      # puts String.new(LibMagick.magickGetCopyright)
      LibMagick.magickGetCopyright.should_not be_nil
      LibMagick.magickGetPackageName.should_not be_nil
      LibMagick.magickGetHomeURL.should_not be_nil
    end
  end
end
