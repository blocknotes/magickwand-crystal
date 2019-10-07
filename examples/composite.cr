# ---------------------------------------------------------------------------- #
# Example:     composite
# Author:      Mat
# Description: Combine 2 images
# ---------------------------------------------------------------------------- #

require "../src/magickwand-crystal"

LibMagick.magickWandGenesis
wand1 = LibMagick.newMagickWand
wand2 = LibMagick.newMagickWand
LibMagick.magickReadImage wand1, "../spec/test2.jpg"
LibMagick.magickReadImage wand2, "../spec/test3.png"
LibMagick.magickCompositeImage wand1, wand2, LibMagick::CompositeOperator::OverCompositeOp, false, 50, 50
LibMagick.magickWriteImage wand1, "output.png"
LibMagick.destroyMagickWand wand2
LibMagick.destroyMagickWand wand1
LibMagick.magickWandTerminus
