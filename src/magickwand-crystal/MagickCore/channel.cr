lib LibMagick
  fun channelFxImage = ChannelFxImage(image : Image*, expression : LibC::Char*, exception : ExceptionInfo*) : Image*
  fun combineImages = CombineImages(image : Image*, colorspace : ColorspaceType, exception : ExceptionInfo*) : Image*
  fun getImageAlphaChannel = GetImageAlphaChannel(image : Image*) : Bool
  fun separateImage = SeparateImage(image : Image*, channel_type : ChannelType, exception : ExceptionInfo*) : Image*
  fun separateImages = SeparateImages(image : Image*, exception : ExceptionInfo*) : Image*
  fun setImageAlphaChannel = SetImageAlphaChannel(image : Image*, alpha_type : AlphaChannelOption, exception : ExceptionInfo*) : Bool
end
