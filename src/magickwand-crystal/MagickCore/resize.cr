lib LibMagick
  fun adaptiveResizeImage = AdaptiveResizeImage(image : Image*, columns : LibC::SizeT, rows : LibC::SizeT, exception : ExceptionInfo*) : Image*
  fun interpolativeResizeImage = InterpolativeResizeImage(image : Image*, columns : LibC::SizeT, rows : LibC::SizeT, method : PixelInterpolateMethod, exception : ExceptionInfo*) : Image*
  fun liquidRescaleImage = LiquidRescaleImage(image : Image*, columns : LibC::SizeT, rows : LibC::SizeT, delta_x : LibC::Double, rigidity : LibC::Double, exception : ExceptionInfo*) : Image*
  # fun liquidRescaleImage = LiquidRescaleImage(image : Image*, magick_unused : LibC::SizeT) : Image*
  fun magnifyImage = MagnifyImage(image : Image*, exception : ExceptionInfo*) : Image*
  fun minifyImage = MinifyImage(image : Image*, exception : ExceptionInfo*) : Image*
  fun resampleImage = ResampleImage(image : Image*, x_resolution : LibC::Double, y_resolution : LibC::Double, filter : FilterType, exception : ExceptionInfo*) : Image*
  fun resizeImage = ResizeImage(image : Image*, columns : LibC::SizeT, rows : LibC::SizeT, filter : FilterType, exception : ExceptionInfo*) : Image*
  fun sampleImage = SampleImage(image : Image*, columns : LibC::SizeT, rows : LibC::SizeT, exception : ExceptionInfo*) : Image*
  fun scaleImage = ScaleImage(image : Image*, columns : LibC::SizeT, rows : LibC::SizeT, exception : ExceptionInfo*) : Image*
  fun thumbnailImage = ThumbnailImage(image : Image*, columns : LibC::SizeT, rows : LibC::SizeT, exception : ExceptionInfo*) : Image*
end
