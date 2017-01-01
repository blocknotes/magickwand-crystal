# ---------------------------------------------------------------------------- #
# Example:     scale
# Author:      Mat
# Description: Using scale functions
# ---------------------------------------------------------------------------- #
require "magickwand-crystal"

LibMagick.magickWandGenesis
wand = LibMagick.newMagickWand
if LibMagick.magickReadImage( wand, "test.png" )
  w = LibMagick.magickGetImageWidth wand
  h = LibMagick.magickGetImageHeight wand
  puts "- Resolution: " + w.to_s + " x " + h.to_s
  LibMagick.magickScaleImage wand, w / 2, h / 2
  LibMagick.magickWriteImage wand, "test2.png"
end
LibMagick.destroyMagickWand( wand )
LibMagick.magickWandTerminus
