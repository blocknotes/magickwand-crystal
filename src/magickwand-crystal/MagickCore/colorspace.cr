lib LibMagick
  fun getImageColorspaceType = GetImageColorspaceType(image : Image*, exception : ExceptionInfo*) : ColorspaceType
  fun setImageColorspace = SetImageColorspace(image : Image*, colorspace : ColorspaceType, exception : ExceptionInfo*) : Bool
  fun setImageGray = SetImageGray(image : Image*, exception : ExceptionInfo*) : Bool
  fun setImageMonochrome = SetImageMonochrome(image : Image*, exception : ExceptionInfo*) : Bool
  fun transformImageColorspace = TransformImageColorspace(image : Image*, colorspace : ColorspaceType, exception : ExceptionInfo*) : Bool
end
