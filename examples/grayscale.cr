# ---------------------------------------------------------------------------- #
# Example:     grayscale
# Author:      Mat
# Description: Grayscale image
# ---------------------------------------------------------------------------- #
require "../magickwand-crystal"

LibMagick.magickWandGenesis
wand = LibMagick.newMagickWand
if LibMagick.magickReadImage( wand, "../spec/test2.jpg" )
  LibMagick.magickTransformImageColorspace wand, LibMagick::ColorspaceType::GRAYColorspace
  LibMagick.magickWriteImage wand, "grayscale.jpg"
end
LibMagick.destroyMagickWand wand
LibMagick.magickWandTerminus
