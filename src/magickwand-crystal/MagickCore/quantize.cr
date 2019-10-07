lib LibMagick
  fun acquireQuantizeInfo = AcquireQuantizeInfo(image_info : ImageInfo*) : QuantizeInfo*
  fun cloneQuantizeInfo = CloneQuantizeInfo(quantize_info : QuantizeInfo*) : QuantizeInfo*
  fun compressImageColormap = CompressImageColormap(image : Image*, exception : ExceptionInfo*) : Bool
  fun destroyQuantizeInfo = DestroyQuantizeInfo(quantize_info : QuantizeInfo*) : QuantizeInfo*
  fun getImageQuantizeError = GetImageQuantizeError(image : Image*, exception : ExceptionInfo*) : Bool
  fun getQuantizeInfo = GetQuantizeInfo(quantize_info : QuantizeInfo*) : Void
  fun posterizeImage = PosterizeImage(image : Image*, levels : LibC::SizeT, dither_method : DitherMethod, exception : ExceptionInfo*) : Bool
  fun quantizeImage = QuantizeImage(quantize_info : QuantizeInfo*, image : Image*, exception : ExceptionInfo*) : Bool
  fun quantizeImages = QuantizeImages(quantize_info : QuantizeInfo*, images : Image*, exception : ExceptionInfo*) : Bool
  fun remapImage = RemapImage(quantize_info : QuantizeInfo*, image : Image*, remap_image : Image*, exception : ExceptionInfo*) : Bool
  fun remapImages = RemapImages(quantize_info : QuantizeInfo*, images : Image*, remap_image : Image*, exception : ExceptionInfo*) : Bool
end
