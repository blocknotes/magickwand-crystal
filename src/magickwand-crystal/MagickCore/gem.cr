lib LibMagick
  fun convertHSLToRGB = ConvertHSLToRGB(hue : LibC::Double, saturation : LibC::Double, lightness : LibC::Double, red : LibC::Double*, green : LibC::Double*, blue : LibC::Double*) : Void
  fun convertRGBToHSL = ConvertRGBToHSL(red : LibC::Double, green : LibC::Double, blue : LibC::Double, hue : LibC::Double*, saturation : LibC::Double*, lightness : LibC::Double*) : Void
  fun expandAffine = ExpandAffine(affine : AffineMatrix*) : LibC::Double
end
