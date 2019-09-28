require "./types"

lib LibMagick
  fun compressImageColormap = CompressImageColormap(image : Image*) : Bool
  fun getImageQuantizeError = GetImageQuantizeError(image : Image*) : Bool
  fun posterizeImage = PosterizeImage(image : Image*, s : LibC::SizeT, b : Bool) : Bool
  fun posterizeImageChannel = PosterizeImageChannel(image : Image*, channelType : ChannelType, s : LibC::SizeT, b : Bool) : Bool
  fun quantizeImage = QuantizeImage(quantizeInfo : QuantizeInfo*, image : Image*) : Bool
  fun quantizeImages = QuantizeImages(quantizeInfo : QuantizeInfo*, image : Image*) : Bool
  fun remapImage = RemapImage(quantizeInfo : QuantizeInfo*, image1 : Image*, image2 : Image*) : Bool
  fun remapImages = RemapImages(quantizeInfo : QuantizeInfo*, image1 : Image*, image2 : Image*) : Bool
  fun acquireQuantizeInfo = AcquireQuantizeInfo(imageInfo : ImageInfo*) : QuantizeInfo*
  fun cloneQuantizeInfo = CloneQuantizeInfo(quantizeInfo : QuantizeInfo*) : QuantizeInfo*
  fun destroyQuantizeInfo = DestroyQuantizeInfo(quantizeInfo : QuantizeInfo*) : QuantizeInfo*
  fun getQuantizeInfo = GetQuantizeInfo(quantizeInfo : QuantizeInfo*) : Void
end
