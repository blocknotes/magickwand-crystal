lib LibMagick
  fun getImageHistogram = GetImageHistogram(image : Image*, number_colors : LibC::SizeT*, exception : ExceptionInfo*) : PixelInfo*
  fun identifyPaletteImage = IdentifyPaletteImage(image : Image*, exception : ExceptionInfo*) : Bool
  fun isHistogramImage = IsHistogramImage(image : Image*, exception : ExceptionInfo*) : Bool
  fun isPaletteImage = IsPaletteImage(image : Image*) : Bool
  fun minMaxStretchImage = MinMaxStretchImage(image : Image*, black : LibC::Double, white : LibC::Double, gamma : LibC::Double, exception : ExceptionInfo*) : Bool
  fun getNumberColors = GetNumberColors(image : Image*, file : LibStd::File*, exception : ExceptionInfo*) : LibC::SizeT
  fun uniqueImageColors = UniqueImageColors(image : Image*, exception : ExceptionInfo*) : Image*
end
