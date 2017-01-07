require "./spec_helper"

describe Magickwand do
  test_png  = "spec/test1.png" # PNG: 640x480 - zip comp
  test_jpg  = "spec/test2.jpg" # PNG
  test_png2 = "spec/test3.png" # PNG
  tmp_img   = "spec/tmp"
  wand = nil

  Spec.before_each do
    LibMagick.magickWandGenesis
    wand = LibMagick.newMagickWand
  end

  Spec.after_each do
    LibMagick.destroyMagickWand wand
    LibMagick.magickWandTerminus
  end

  it "should be ready" do
    LibMagick.isMagickWand( wand ).should be_true  # check the return value: true
    # LibMagick.isMagickWandInstantiated.should be_true # NOTE: Travis says: "undefined IsMagickWandInstantiated" - check Magick version
  end

  it "should read an image and get basic info" do
    LibMagick.magickReadImage( wand, test_png ).should be_true  # check the return value: true
    String.new( LibMagick.magickGetImageFormat( wand ) ).should eq "PNG"  # check the format
    # ( LibMagick.magickGetImageWidth(  wand ) > 0 ).should be_true
    LibMagick.magickGetImageWidth(  wand ).should eq 640  # check the width
    LibMagick.magickGetImageHeight( wand ).should eq 480  # check the height
    LibMagick.magickGetImageCompression( wand ).should eq LibMagick::CompressionType::ZipCompression  # check the compression type
    LibMagick.getImageFromMagickWand( wand ).value.class.should eq LibMagick::Image  # check the class type
  end

  it "should scale an image" do
    tmp = tmp_img + ".jpg"
    File.delete tmp rescue nil
    LibMagick.magickReadImage wand, test_png
    w = LibMagick.magickGetImageWidth wand
    h = LibMagick.magickGetImageHeight wand
    LibMagick.magickScaleImage wand, w / 2, h / 2
    LibMagick.magickWriteImage( wand, tmp ).should be_true  # check the return value: true
    # Read the new image
    wand2 = LibMagick.newMagickWand
    LibMagick.magickReadImage( wand2, tmp ).should be_true  # check the return value: true
    String.new( LibMagick.magickGetImageFormat( wand2 ) ).should eq "JPEG"  # check the format
    LibMagick.magickGetImageWidth(  wand2 ).should eq 320  # check the width
    LibMagick.magickGetImageHeight( wand2 ).should eq 240  # check the height
    LibMagick.destroyMagickWand wand2
  end

  it "should resize an image" do
    tmp = tmp_img + ".jpg"
    File.delete tmp rescue nil
    LibMagick.magickReadImage wand, test_jpg
    w = LibMagick.magickGetImageWidth wand
    h = LibMagick.magickGetImageHeight wand
    LibMagick.magickResizeImage wand, w / 2, h / 2, LibMagick::FilterTypes::LanczosFilter, 1
    LibMagick.magickWriteImage( wand, tmp ).should be_true  # check the return value: true
    # Read the new image
    wand2 = LibMagick.newMagickWand
    LibMagick.magickReadImage( wand2, tmp ).should be_true  # check the return value: true
    String.new( LibMagick.magickGetImageFormat( wand2 ) ).should eq "JPEG"  # check the format
    LibMagick.magickGetImageWidth(  wand2 ).should eq ( w / 2 )  # check the width
    LibMagick.magickGetImageHeight( wand2 ).should eq ( h / 2 )  # check the height
    LibMagick.destroyMagickWand wand2
  end

  it "should extent an image" do
    tmp = tmp_img + ".jpg"
    File.delete tmp rescue nil
    LibMagick.magickReadImage wand, test_jpg
    w = LibMagick.magickGetImageWidth wand
    h = LibMagick.magickGetImageHeight wand
    p_wand = LibMagick.newPixelWand
    LibMagick.pixelSetColor p_wand, "gold"
    LibMagick.magickSetImageBackgroundColor wand, p_wand
    LibMagick.magickExtentImage wand, w + 100, h + 100, -50, -50
    LibMagick.magickWriteImage wand, tmp
    LibMagick.destroyPixelWand p_wand
    # Read the new image
    wand2 = LibMagick.newMagickWand
    LibMagick.magickReadImage( wand2, tmp ).should be_true  # check the return value: true
    String.new( LibMagick.magickGetImageFormat( wand2 ) ).should eq "JPEG"  # check the format
    LibMagick.magickGetImageWidth(  wand2 ).should eq ( w + 100 )  # check the width
    LibMagick.magickGetImageHeight( wand2 ).should eq ( h + 100 )  # check the height
    LibMagick.destroyMagickWand wand2
  end

  # it "should floodfill a color in image" do
  #   tmp = tmp_img + ".png"
  #   File.delete tmp rescue nil
  #   fc_wand = LibMagick.newPixelWand
  #   bc_wand = LibMagick.newPixelWand
  #   LibMagick.magickReadImage wand, test_png2
  #   w = LibMagick.magickGetImageWidth wand
  #   h = LibMagick.magickGetImageHeight wand
  #   LibMagick.pixelSetColor fc_wand, "none"
  #   LibMagick.pixelSetColor bc_wand, "red"
  #   channel = LibMagick.parseChannelOption "rgba"
  #   LibMagick.magickFloodfillPaintImage( wand, fc_wand, 20, bc_wand, 150, 150, false ).should be_true  # check the return value: true
  #   LibMagick.magickWriteImage wand, tmp
  #   LibMagick.destroyPixelWand bc_wand
  #   LibMagick.destroyPixelWand fc_wand
  #   # Read the new image
  #   wand2 = LibMagick.newMagickWand
  #   LibMagick.magickReadImage( wand2, tmp ).should be_true   # check the return value: true
  #   String.new( LibMagick.magickGetImageFormat( wand2 ) ).should eq "PNG"  # check the format
  #   LibMagick.magickGetImageWidth(  wand2 ).should eq ( w )  # check the width
  #   LibMagick.magickGetImageHeight( wand2 ).should eq ( h )  # check the height
  #   p_wand = LibMagick.newPixelWand
  #   LibMagick.magickGetImagePixelColor( wand2, 10, 10, p_wand )
  #   String.new( LibMagick.pixelGetColorAsNormalizedString( p_wand ) ).should eq "0,0,1"    # check the pixel in the center: blue
  #   LibMagick.magickGetImagePixelColor( wand2, w / 2, h / 2, p_wand )
  #   String.new( LibMagick.pixelGetColorAsNormalizedString( p_wand ) ).should eq "0,0,0,1"  # check the pixel in the center: transparent
  #   LibMagick.destroyPixelWand p_wand
  #   LibMagick.destroyMagickWand wand2
  # end

  it "should combine 2 images" do
    tmp = tmp_img + ".jpg"
    File.delete tmp rescue nil
    wand2 = LibMagick.newMagickWand
    LibMagick.magickReadImage wand, test_jpg
    LibMagick.magickReadImage wand2, test_png2
    w = LibMagick.magickGetImageWidth wand
    h = LibMagick.magickGetImageHeight wand
    LibMagick.magickCompositeImage wand, wand2, LibMagick::CompositeOperator::OverCompositeOp, false, 100, 100
    LibMagick.magickWriteImage wand, tmp
    LibMagick.destroyMagickWand( wand2 )
    # Read the new image
    wand3 = LibMagick.newMagickWand
    LibMagick.magickReadImage( wand3, tmp ).should be_true   # check the return value: true
    String.new( LibMagick.magickGetImageFormat( wand3 ) ).should eq "JPEG"  # check the format
    LibMagick.magickGetImageWidth(  wand3 ).should eq ( w )  # check the width
    LibMagick.magickGetImageHeight( wand3 ).should eq ( h )  # check the height
    LibMagick.destroyMagickWand wand3
  end

  it "should convert an image to grayscale" do
    tmp = tmp_img + ".jpg"
    File.delete tmp rescue nil
    LibMagick.magickReadImage wand, test_jpg
    LibMagick.magickGetImageColorspace( wand ).should eq( LibMagick::ColorspaceType::SRGBColorspace )  # check the colorspace
    LibMagick.magickTransformImageColorspace( wand, LibMagick::ColorspaceType::GRAYColorspace ).should be_true   # check the return value: true
    LibMagick.magickWriteImage( wand, tmp ).should be_true   # check the return value: true
    LibMagick.magickGetImageColorspace( wand ).should eq( LibMagick::ColorspaceType::GRAYColorspace )  # check the colorspace
  end

  it "should draw a yellow rectangle on the center of an image" do
    tmp = tmp_img + ".png"
    tmp = "/tmp/test.png"
    File.delete tmp rescue nil
    p_wand = LibMagick.newPixelWand
    d_wand = LibMagick.newDrawingWand
    LibMagick.magickReadImage wand, test_png2
    px = LibMagick.magickGetImageWidth( wand ) / 2
    py = LibMagick.magickGetImageHeight( wand ) / 2
    LibMagick.pixelSetColor p_wand, "yellow"
    LibMagick.drawSetStrokeOpacity d_wand, 1
    LibMagick.drawSetStrokeColor d_wand, p_wand
    LibMagick.drawSetStrokeWidth d_wand, 4
    LibMagick.drawSetStrokeAntialias d_wand, true
    LibMagick.drawSetFillColor d_wand, p_wand
    LibMagick.drawRectangle d_wand, px - 50, py - 50, px + 50, py + 50
    LibMagick.magickGetImagePixelColor( wand, px, py, p_wand )
    String.new( LibMagick.pixelGetColorAsNormalizedString( p_wand ) ).should eq "1,0,0"  # check the pixel in the center: red
    LibMagick.magickDrawImage( wand, d_wand ).should be_true   # check the return value: true
    LibMagick.magickGetImagePixelColor( wand, px, py, p_wand )
    String.new( LibMagick.pixelGetColorAsNormalizedString( p_wand ) ).should eq "1,1,0"  # check the pixel in the center: yellow
    LibMagick.magickWriteImage( wand, tmp ).should be_true   # check the return value: true
    LibMagick.destroyDrawingWand d_wand
    LibMagick.destroyPixelWand p_wand
  end
end
