# ---------------------------------------------------------------------------- #
# Example:     text
# Author:      Mat
# Description: Text image
# ---------------------------------------------------------------------------- #
require "../magickwand-crystal"

LibMagick.magickWandGenesis
m_wand = LibMagick.newMagickWand
d_wand = LibMagick.newDrawingWand
p_wand = LibMagick.newPixelWand
if LibMagick.magickReadImage( m_wand, "../spec/test1.png" )
  LibMagick.pixelSetColor p_wand,"white"
  LibMagick.drawSetFillColor d_wand, p_wand
  LibMagick.drawSetFont d_wand, "Verdana-Bold-Italic"
  LibMagick.drawSetFontSize d_wand, 40
  LibMagick.drawSetTextAntialias d_wand, true
  LibMagick.drawAnnotation d_wand, 25, 65, "It's Magick"
  LibMagick.magickDrawImage m_wand, d_wand
  LibMagick.magickTrimImage m_wand, 0
  LibMagick.magickWriteImage m_wand, "test2.png"
end
LibMagick.destroyPixelWand p_wand
LibMagick.destroyDrawingWand d_wand
LibMagick.destroyMagickWand m_wand
LibMagick.magickWandTerminus
