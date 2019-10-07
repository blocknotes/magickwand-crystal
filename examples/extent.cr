# ---------------------------------------------------------------------------- #
# Example:     extent
# Author:      Mat
# Description: Extent image
# ---------------------------------------------------------------------------- #

require "../src/magickwand-crystal"

LibMagick.magickWandGenesis
m_wand = LibMagick.newMagickWand
p_wand = LibMagick.newPixelWand
if LibMagick.magickReadImage(m_wand, "../spec/test1.png")
  LibMagick.pixelSetColor p_wand, "magenta"
  LibMagick.magickSetImageBackgroundColor m_wand, p_wand
  LibMagick.magickExtentImage m_wand, 840, 680, -100, -100
  LibMagick.magickWriteImage m_wand, "output.png"
end
LibMagick.destroyPixelWand p_wand
LibMagick.destroyMagickWand m_wand
LibMagick.magickWandTerminus
