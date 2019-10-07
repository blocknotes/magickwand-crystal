lib LibMagick
  fun affineTransformImage = AffineTransformImage(image : Image*, affine_matrix : AffineMatrix*, exception : ExceptionInfo*) : Image*
  fun distortResizeImage = DistortResizeImage(image : Image*, columns : LibC::SizeT, rows : LibC::SizeT, exception : ExceptionInfo*) : Image*
  fun distortImage = DistortImage(image : Image*, method : DistortMethod, number_arguments : LibC::SizeT, arguments : LibC::Double*, bestfit : Bool, exception : ExceptionInfo*) : Image*
  fun rotateImage = RotateImage(image : Image*, degrees : LibC::Double, exception : ExceptionInfo*) : Image*
  fun sparseColorImage = SparseColorImage(image : Image*, method : SparseColorMethod, number_arguments : LibC::SizeT, arguments : LibC::Double*, exception : ExceptionInfo*) : Image*
end
