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
    LibMagick.isMagickWand( wand ).should be_true
    # LibMagick.isMagickWandInstantiated.should be_true # NOTE: Travis says: "undefined IsMagickWandInstantiated" - check Magick version
  end

  it "should read an image and get basic info" do
    LibMagick.magickReadImage( wand, test_png ).should be_true
    String.new( LibMagick.magickGetImageFormat( wand ) ).should eq "PNG"
    # ( LibMagick.magickGetImageWidth(  wand ) > 0 ).should be_true
    LibMagick.magickGetImageWidth(  wand ).should eq 640
    LibMagick.magickGetImageHeight( wand ).should eq 480
    LibMagick.magickGetImageCompression( wand ).should eq LibMagick::CompressionType::ZipCompression
    LibMagick.magickGetImageChannelStatistics( wand ).value.class.should eq LibMagick::ChannelStatistics
  end

  it "should scale an image" do
    tmp = tmp_img + ".jpg"
    File.delete tmp rescue nil
    LibMagick.magickReadImage wand, test_png
    w = LibMagick.magickGetImageWidth wand
    h = LibMagick.magickGetImageHeight wand
    LibMagick.magickScaleImage wand, w / 2, h / 2
    LibMagick.magickWriteImage( wand, tmp ).should be_true
    # Read the new image
    wand2 = LibMagick.newMagickWand
    LibMagick.magickReadImage( wand2, tmp ).should be_true
    String.new( LibMagick.magickGetImageFormat( wand2 ) ).should eq "JPEG"
    LibMagick.magickGetImageWidth(  wand2 ).should eq 320
    LibMagick.magickGetImageHeight( wand2 ).should eq 240
    LibMagick.destroyMagickWand wand2
  end

  it "should resize an image" do
    tmp = tmp_img + ".jpg"
    File.delete tmp rescue nil
    LibMagick.magickReadImage wand, test_jpg
    w = LibMagick.magickGetImageWidth wand
    h = LibMagick.magickGetImageHeight wand
    LibMagick.magickResizeImage wand, w / 2, h / 2, LibMagick::FilterTypes::LanczosFilter, 1
    LibMagick.magickWriteImage( wand, tmp ).should be_true
    # Read the new image
    wand2 = LibMagick.newMagickWand
    LibMagick.magickReadImage( wand2, tmp ).should be_true
    String.new( LibMagick.magickGetImageFormat( wand2 ) ).should eq "JPEG"
    LibMagick.magickGetImageWidth(  wand2 ).should eq ( w / 2 )
    LibMagick.magickGetImageHeight( wand2 ).should eq ( h / 2 )
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
    LibMagick.magickReadImage( wand2, tmp ).should be_true
    String.new( LibMagick.magickGetImageFormat( wand2 ) ).should eq "JPEG"
    LibMagick.magickGetImageWidth(  wand2 ).should eq ( w + 100 )
    LibMagick.magickGetImageHeight( wand2 ).should eq ( h + 100 )
    LibMagick.destroyMagickWand wand2
  end

  it "should floodfill a color in image" do
    tmp = tmp_img + ".png"
    File.delete tmp rescue nil
    fc_wand = LibMagick.newPixelWand
    bc_wand = LibMagick.newPixelWand
    LibMagick.magickReadImage wand, test_png2
    w = LibMagick.magickGetImageWidth wand
    h = LibMagick.magickGetImageHeight wand
    LibMagick.pixelSetColor fc_wand, "none"
    LibMagick.pixelSetColor bc_wand, "red"
    channel = LibMagick.parseChannelOption "rgba"
    LibMagick.magickFloodfillPaintImage wand, LibMagick::ChannelType.new( channel.to_i ), fc_wand, 20, bc_wand, 150, 150, false
    LibMagick.magickWriteImage wand, tmp
    LibMagick.destroyPixelWand bc_wand
    LibMagick.destroyPixelWand fc_wand
    # Read the new image
    wand2 = LibMagick.newMagickWand
    LibMagick.magickReadImage( wand2, tmp ).should be_true
    String.new( LibMagick.magickGetImageFormat( wand2 ) ).should eq "PNG"
    LibMagick.magickGetImageWidth(  wand2 ).should eq ( w )
    LibMagick.magickGetImageHeight( wand2 ).should eq ( h )
    LibMagick.destroyMagickWand wand2
  end

  it "should combine 2 images" do
    tmp = tmp_img + ".jpg"
    File.delete tmp rescue nil
    wand2 = LibMagick.newMagickWand
    LibMagick.magickReadImage wand, test_jpg
    LibMagick.magickReadImage wand2, test_png2
    w = LibMagick.magickGetImageWidth wand
    h = LibMagick.magickGetImageHeight wand
    LibMagick.magickCompositeImage wand, wand2, LibMagick::CompositeOperator::OverCompositeOp, 100, 100
    LibMagick.magickWriteImage wand, tmp
    LibMagick.destroyMagickWand( wand2 )
    # Read the new image
    wand3 = LibMagick.newMagickWand
    LibMagick.magickReadImage( wand3, tmp ).should be_true
    String.new( LibMagick.magickGetImageFormat( wand3 ) ).should eq "JPEG"
    LibMagick.magickGetImageWidth(  wand3 ).should eq ( w )
    LibMagick.magickGetImageHeight( wand3 ).should eq ( h )
    LibMagick.destroyMagickWand wand3
  end
end
