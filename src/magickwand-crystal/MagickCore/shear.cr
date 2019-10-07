lib LibMagick
  fun deskewImage = DeskewImage(image : Image*, threshold : LibC::Double, exception : ExceptionInfo*) : Image*
  fun integralRotateImage = IntegralRotateImage(image : Image*, rotations : LibC::SizeT, exception : ExceptionInfo*) : Image*
  fun shearImage = ShearImage(image : Image*, x_shear : LibC::Double, y_shear : LibC::Double, exception : ExceptionInfo*) : Image*
  fun shearRotateImage = ShearRotateImage(image : Image*, degrees : LibC::Double, exception : ExceptionInfo*) : Image*
end
