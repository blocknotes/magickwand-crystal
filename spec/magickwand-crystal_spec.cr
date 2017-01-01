require "./spec_helper"

describe Magickwand do
  it "should read an image and get basic info" do
    LibMagick.magickWandGenesis
    wand = LibMagick.newMagickWand
    result = LibMagick.magickReadImage wand, "spec/test1.png"
    result.should be_true
    ( LibMagick.magickGetImageWidth(  wand ) > 0 ).should be_true
    ( LibMagick.magickGetImageHeight( wand ) > 0 ).should be_true
    LibMagick.destroyMagickWand wand
    LibMagick.magickWandTerminus
  end
end
