# ---------------------------------------------------------------------------- #
# Example:     shapes
# Author:      Mat
# Description: Draw some shapes
# ---------------------------------------------------------------------------- #

require "../src/magickwand-crystal"

LibMagick.magickWandGenesis
m_wand = LibMagick.newMagickWand
p_wand = LibMagick.newPixelWand
d_wand = LibMagick.newDrawingWand

LibMagick.pixelSetColor p_wand, "orange"
LibMagick.magickNewImage m_wand, 640, 480, p_wand
LibMagick.pixelSetColor p_wand, "red"
LibMagick.drawSetStrokeOpacity d_wand, 1
LibMagick.drawSetStrokeColor d_wand, p_wand
LibMagick.drawSetStrokeWidth d_wand, 4
LibMagick.drawSetStrokeAntialias d_wand, true
LibMagick.drawSetFillColor d_wand, p_wand
LibMagick.drawRectangle d_wand, 300, 200, 500, 300
LibMagick.pixelSetColor p_wand, "rgb(0,0,128)"
LibMagick.drawSetFillColor d_wand, p_wand
LibMagick.drawCircle d_wand, 150, 150, 200, 200
LibMagick.pixelSetColor p_wand, "green"
LibMagick.drawSetStrokeColor d_wand, p_wand
LibMagick.drawLine d_wand, 20, 20, 100, 400
LibMagick.magickDrawImage m_wand, d_wand
LibMagick.magickWriteImage m_wand, "output.jpg"

LibMagick.destroyDrawingWand d_wand
LibMagick.destroyPixelWand p_wand
LibMagick.destroyMagickWand m_wand
LibMagick.magickWandTerminus
