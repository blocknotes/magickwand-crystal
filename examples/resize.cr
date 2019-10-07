# ---------------------------------------------------------------------------- #
# Example:     resize
# Author:      Mat
# Description: Resize image
# ---------------------------------------------------------------------------- #

require "../src/magickwand-crystal"

LibMagick.magickWandGenesis
wand = LibMagick.newMagickWand
if LibMagick.magickReadImage(wand, "../spec/test2.jpg")
  w = LibMagick.magickGetImageWidth wand
  h = LibMagick.magickGetImageHeight wand
  puts "- Resolution: " + w.to_s + " x " + h.to_s
  LibMagick.magickResizeImage wand, w / 2, h / 2, LibMagick::FilterType::LanczosFilter
  # # or simply scale with:
  # LibMagick.magickScaleImage wand, w / 2, h / 2
  LibMagick.magickSetImageCompressionQuality wand, 80
  LibMagick.magickWriteImage wand, "output.jpg"
end
LibMagick.destroyMagickWand wand
LibMagick.magickWandTerminus
