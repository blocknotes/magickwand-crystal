lib LibMagick
  fun complexImages = ComplexImages(images : Image*, op : ComplexOperator, exception : ExceptionInfo*) : Image*
  fun forwardFourierTransformImage = ForwardFourierTransformImage(image : Image*, modulus : Bool, exception : ExceptionInfo*) : Image*
  fun inverseFourierTransformImage = InverseFourierTransformImage(magnitude_image : Image*, phase_image : Image*, modulus : Bool, exception : ExceptionInfo*) : Image*
end
