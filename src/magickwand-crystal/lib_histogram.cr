require "./types"

lib LibMagick
  fun getImageHistogram = GetImageHistogram(image : Image*, size: LibC::SizeT*, exceptionInfo : ExceptionInfo*) : PixelInfo*

  fun uniqueImageColors = UniqueImageColors(image : Image*, exceptionInfo : ExceptionInfo*) : Image*

  fun identifyPaletteImage = IdentifyPaletteImage(image : Image*, exceptionInfo : ExceptionInfo*) : Bool
  fun isHistogramImage = IsHistogramImage(image : Image*, exceptionInfo : ExceptionInfo*) : Bool
  fun isPaletteImage = IsPaletteImage(image : Image*) : Bool
  fun minMaxStretchImage = MinMaxStretchImage(image : Image*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, exceptionInfo : ExceptionInfo*) : Bool

  fun getNumberColors = GetNumberColors(image : Image*, file : LibStd::File*, exceptionInfo : ExceptionInfo*) : LibC::SizeT
end
