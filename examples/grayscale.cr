# ---------------------------------------------------------------------------- #
# Example:     grayscale
# Author:      Mat
# Description: Grayscale image
# ---------------------------------------------------------------------------- #
require "../magickwand-crystal"

LibMagick.magickWandGenesis
wand = LibMagick.newMagickWand
if LibMagick.magickReadImage( wand, "../spec/test2.jpg" )
  p LibMagick.magickGetImageColorspace( wand )
  LibMagick.magickTransformImageColorspace wand, LibMagick::ColorspaceType::GRAYColorspace
  LibMagick.magickWriteImage wand, "grayscale.jpg"
  p LibMagick.magickGetImageColorspace( wand )
end
LibMagick.destroyMagickWand wand
LibMagick.magickWandTerminus
