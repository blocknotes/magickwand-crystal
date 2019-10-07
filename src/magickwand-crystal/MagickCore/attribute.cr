lib LibMagick
  fun getImageBoundingBox = GetImageBoundingBox(image : Image*, exception : ExceptionInfo*) : RectangleInfo
  fun getImageDepth = GetImageDepth(image : Image*, exception : ExceptionInfo*) : LibC::SizeT
  fun getImageQuantumDepth = GetImageQuantumDepth(image : Image*, constrain : Bool) : LibC::SizeT
  fun getImageType = GetImageType(image : Image*) : ImageType
  fun identifyImageGray = IdentifyImageGray(image : Image*, exception : ExceptionInfo*) : ImageType
  fun identifyImageMonochrome = IdentifyImageMonochrome(image : Image*, exception : ExceptionInfo*) : Bool
  fun identifyImageType = IdentifyImageType(image : Image*, exception : ExceptionInfo*) : ImageType
  fun isImageGray = IsImageGray(image : Image*) : Bool
  fun isImageMonochrome = IsImageMonochrome(image : Image*) : Bool
  fun isImageOpaque = IsImageOpaque(image : Image*, exception : ExceptionInfo*) : Bool
  fun setImageDepth = SetImageDepth(image : Image*, depth : LibC::SizeT, exception : ExceptionInfo*) : Bool
  fun setImageType = SetImageType(image : Image*, type : ImageType, exception : ExceptionInfo*) : Bool
end
