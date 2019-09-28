require "./types"

lib LibMagick
  fun getImageHistogram = GetImageHistogram(image : Image*, sp : LibC::SizeT*, exceptionInfo : ExceptionInfo*) : ColorPacket*

  fun uniqueImageColors = UniqueImageColors(image : Image*, exceptionInfo : ExceptionInfo*) : Image*

  fun identifyPaletteImage = IdentifyPaletteImage(image : Image*, exceptionInfo : ExceptionInfo*) : Bool
  fun isHistogramImage = IsHistogramImage(image : Image*, exceptionInfo : ExceptionInfo*) : Bool
  fun isPaletteImage = IsPaletteImage(image : Image*, exceptionInfo : ExceptionInfo*) : Bool
  fun minMaxStretchImage = MinMaxStretchImage(image : Image*, channelType : ChannelType, d1 : LibC::Double, d2 : LibC::Double) : Bool

  fun getNumberColors = GetNumberColors(image : Image*, file : LibStd::File*, exceptionInfo : ExceptionInfo*) : LibC::SizeT
end
