require "./types"

lib LibMagick
  fun compressImageColormap = CompressImageColormap(image : Image*, exceptionInfo : ExceptionInfo*) : Bool
  fun getImageQuantizeError = GetImageQuantizeError(image : Image*, exceptionInfo : ExceptionInfo*) : Bool
  fun posterizeImage = PosterizeImage(image : Image*, s : LibC::SizeT, ditherMethod : DitherMethod, exceptionInfo : ExceptionInfo*) : Bool
  fun quantizeImage = QuantizeImage(quantizeInfo : QuantizeInfo*, image : Image*, exceptionInfo : ExceptionInfo*) : Bool
  fun quantizeImages = QuantizeImages(quantizeInfo : QuantizeInfo*, image : Image*, exceptionInfo : ExceptionInfo*) : Bool
  fun remapImage = RemapImage(quantizeInfo : QuantizeInfo*, image1 : Image*, image2 : Image*, exceptionInfo : ExceptionInfo*) : Bool
  fun remapImages = RemapImages(quantizeInfo : QuantizeInfo*, image1 : Image*, image2 : Image*, exceptionInfo : ExceptionInfo*) : Bool

  fun acquireQuantizeInfo = AcquireQuantizeInfo(imageInfo : ImageInfo*) : QuantizeInfo*
  fun cloneQuantizeInfo = CloneQuantizeInfo(quantizeInfo : QuantizeInfo*) : QuantizeInfo*
  fun destroyQuantizeInfo = DestroyQuantizeInfo(quantizeInfo : QuantizeInfo*) : QuantizeInfo*

  fun getQuantizeInfo = GetQuantizeInfo(quantizeInfo : QuantizeInfo*) : Void
end
