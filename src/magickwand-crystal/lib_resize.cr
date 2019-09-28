require "./types"

lib LibMagick
  fun adaptiveResizeImage = AdaptiveResizeImage(image : Image*, s1 : LibC::SizeT, s2 : LibC::SizeT, exceptionInfo : ExceptionInfo*) : Image*
  fun interpolativeResizeImage = InterpolativeResizeImage(image : Image*, s1 : LibC::SizeT, s2 : LibC::SizeT, interpolatePixelMethod : InterpolatePixelMethod, exceptionInfo : ExceptionInfo*) : Image*
  fun liquidRescaleImage = LiquidRescaleImage(image : Image*, s1 : LibC::SizeT, s2 : LibC::SizeT, d1 : LibC::Double, d2 : LibC::Double, exceptionInfo : ExceptionInfo*) : Image*
  fun magnifyImage = MagnifyImage(image : Image*, exceptionInfo : ExceptionInfo*) : Image*
  fun minifyImage = MinifyImage(image : Image*, exceptionInfo : ExceptionInfo*) : Image*
  fun resampleImage = ResampleImage(image : Image*, d1 : LibC::Double, d2 : LibC::Double, filterTypes : FilterTypes, d3 : LibC::Double, exceptionInfo : ExceptionInfo*) : Image*
  fun resizeImage = ResizeImage(image : Image*, s1 : LibC::SizeT, s2 : LibC::SizeT, filterTypes : FilterTypes, d : LibC::Double, exceptionInfo : ExceptionInfo*) : Image*
  fun sampleImage = SampleImage(image : Image*, s1 : LibC::SizeT, s2 : LibC::SizeT, exceptionInfo : ExceptionInfo*) : Image*
  fun scaleImage = ScaleImage(image : Image*, s1 : LibC::SizeT, s2 : LibC::SizeT, exceptionInfo : ExceptionInfo*) : Image*
  fun thumbnailImage = ThumbnailImage(image : Image*, s1 : LibC::SizeT, s2 : LibC::SizeT, exceptionInfo : ExceptionInfo*) : Image*
end
