# ---------------------------------------------------------------------------- #
# Example:     morphology
# Description: Morph of an image
# ---------------------------------------------------------------------------- #

require "../src/magickwand-crystal"

LibMagick.magickWandGenesis
wand = LibMagick.newMagickWand
if LibMagick.magickReadImage(wand, "../spec/test2.jpg")
  LibMagick.magickSetImageArtifact wand, "convolve:bias", "50%"
  gi = LibMagick::GeometryInfo.new
  ei = LibMagick.acquireExceptionInfo
  ki = LibMagick.acquireKernelBuiltIn LibMagick::KernelInfoType::SobelKernel, pointerof(gi), ei
  LibMagick.magickMorphologyImage wand, LibMagick::MorphologyMethod::ConvolveMorphology, 1, ki
  LibMagick.magickWriteImage wand, "output.jpg"
end
LibMagick.destroyMagickWand wand
LibMagick.magickWandTerminus
