require "./types"

lib LibMagick
  fun adaptiveThresholdImage
    = AdaptiveThresholdImage( image : Image*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss : LibC::SSizeT, exceptionInfo : ExceptionInfo* ): Image*

  fun destroyThresholdMap
    = DestroyThresholdMap( thresholdMap : ThresholdMap* ): ThresholdMap*
  fun getThresholdMap
    = GetThresholdMap( cp : LibC::Char*, exceptionInfo : ExceptionInfo* ): ThresholdMap*

  fun bilevelImage
    = BilevelImage( image : Image*, d : LibC::Double ): Bool
  fun bilevelImageChannel
    = BilevelImageChannel( image : Image*, channelType : ChannelType, d : LibC::Double ): Bool
  fun blackThresholdImage
    = BlackThresholdImage( image : Image*, cp : LibC::Char* ): Bool
  fun blackThresholdImageChannel
    = BlackThresholdImageChannel( image : Image*, channelType : ChannelType, cp : LibC::Char*, exceptionInfo : ExceptionInfo* ): Bool
  fun clampImage
    = ClampImage( image : Image* ): Bool
  fun clampImageChannel
    = ClampImageChannel( image : Image*, channelType : ChannelType ): Bool
  fun listThresholdMaps
    = ListThresholdMaps( file : LibStd::File*, exceptionInfo : ExceptionInfo* ): Bool
  fun orderedDitherImage
    = OrderedDitherImage( image : Image* ): Bool
  fun orderedDitherImageChannel
    = OrderedDitherImageChannel( image : Image*, channelType : ChannelType, exceptionInfo : ExceptionInfo* ): Bool
  fun orderedPosterizeImage
    = OrderedPosterizeImage( image : Image*, cp : LibC::Char*, exceptionInfo : ExceptionInfo* ): Bool
  fun orderedPosterizeImageChannel
    = OrderedPosterizeImageChannel( image : Image*, channelType : ChannelType, cp : LibC::Char*, exceptionInfo : ExceptionInfo* ): Bool
  fun perceptibleImage
    = PerceptibleImage( image : Image*, d : LibC::Double ): Bool
  fun perceptibleImageChannel
    = PerceptibleImageChannel( image : Image*, channelType : ChannelType, d : LibC::Double ): Bool
  fun randomThresholdImage
    = RandomThresholdImage( image : Image*, cp : LibC::Char*, exceptionInfo : ExceptionInfo* ): Bool
  fun randomThresholdImageChannel
    = RandomThresholdImageChannel( image : Image*, channelType : ChannelType, cp : LibC::Char*, exceptionInfo : ExceptionInfo* ): Bool
  fun whiteThresholdImage
    = WhiteThresholdImage( image : Image*, cp : LibC::Char* ): Bool
  fun whiteThresholdImageChannel
    = WhiteThresholdImageChannel( image : Image*, channelType : ChannelType, cp : LibC::Char*, exceptionInfo : ExceptionInfo* ): Bool
end
