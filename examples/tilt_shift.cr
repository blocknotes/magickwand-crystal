# ---------------------------------------------------------------------------- #
# Example:     tilt_shift
# Author:      Mat
# Description: Tilt shift image
# ---------------------------------------------------------------------------- #
require "../magickwand-crystal"

LibMagick.magickWandGenesis
arglist = [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0, 1.0, 1.0, 1.0 ]
funclist = [ 4.0, -4.0, 1.0 ]
mw = LibMagick.newMagickWand
if LibMagick.magickReadImage( mw, "../spec/test2.jpg" )
  arglist[6] = Float64.new( LibMagick.magickGetImageHeight( mw ) - 1 )
  LibMagick.magickSigmoidalContrastImage mw, true, 15, LibMagick::QuantumRange * 0.4
  cw = LibMagick.cloneMagickWand mw
  LibMagick.magickSparseColorImage cw, LibMagick::SparseColorMethod::BarycentricColorInterpolate, 10, arglist
  LibMagick.magickFunctionImage cw, LibMagick::MagickFunction::PolynomialFunction, 3, funclist
  if LibMagick.magickSetImageArtifact( cw, "compose:args", "15" )
    LibMagick.magickCompositeImage mw, cw, LibMagick::CompositeOperator::BlurCompositeOp, true, 0, 0
    LibMagick.magickWriteImage mw, "tilt_shift.jpg"
  end
  LibMagick.destroyMagickWand cw
end
LibMagick.destroyMagickWand mw
LibMagick.magickWandTerminus
