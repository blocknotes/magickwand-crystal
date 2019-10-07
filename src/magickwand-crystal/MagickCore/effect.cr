lib LibMagick
  fun adaptiveBlurImage = AdaptiveBlurImage(image : Image*, radius : LibC::Double, sigma : LibC::Double, exception : ExceptionInfo*) : Image*
  fun adaptiveSharpenImage = AdaptiveSharpenImage(image : Image*, radius : LibC::Double, sigma : LibC::Double, exception : ExceptionInfo*) : Image*
  fun blurImage = BlurImage(image : Image*, radius : LibC::Double, sigma : LibC::Double, exception : ExceptionInfo*) : Image*
  fun convolveImage = ConvolveImage(image : Image*, kernel_info : KernelInfo*, exception : ExceptionInfo*) : Image*
  fun despeckleImage = DespeckleImage(image : Image*, exception : ExceptionInfo*) : Image*
  fun edgeImage = EdgeImage(image : Image*, radius : LibC::Double, exception : ExceptionInfo*) : Image*
  fun embossImage = EmbossImage(image : Image*, radius : LibC::Double, sigma : LibC::Double, exception : ExceptionInfo*) : Image*
  fun gaussianBlurImage = GaussianBlurImage(image : Image*, radius : LibC::Double, sigma : LibC::Double, exception : ExceptionInfo*) : Image*
  fun kuwaharaImage = KuwaharaImage(image : Image*, radius : LibC::Double, sigma : LibC::Double, exception : ExceptionInfo*) : Image*
  fun localContrastImage = LocalContrastImage(image : Image*, radius : LibC::Double, strength : LibC::Double, exception : ExceptionInfo*) : Image*
  fun motionBlurImage = MotionBlurImage(image : Image*, radius : LibC::Double, sigma : LibC::Double, angle : LibC::Double, exception : ExceptionInfo*) : Image*
  fun previewImage = PreviewImage(image : Image*, preview : PreviewType, exception : ExceptionInfo*) : Image*
  fun rotationalBlurImage = RotationalBlurImage(image : Image*, angle : LibC::Double, exception : ExceptionInfo*) : Image*
  fun selectiveBlurImage = SelectiveBlurImage(image : Image*, radius : LibC::Double, sigma : LibC::Double, threshold : LibC::Double, exception : ExceptionInfo*) : Image*
  fun shadeImage = ShadeImage(image : Image*, gray : Bool, azimuth : LibC::Double, elevation : LibC::Double, exception : ExceptionInfo*) : Image*
  fun sharpenImage = SharpenImage(image : Image*, radius : LibC::Double, sigma : LibC::Double, exception : ExceptionInfo*) : Image*
  fun spreadImage = SpreadImage(image : Image*, method : PixelInterpolateMethod, radius : LibC::Double, exception : ExceptionInfo*) : Image*
  fun unsharpMaskImage = UnsharpMaskImage(image : Image*, radius : LibC::Double, sigma : LibC::Double, gain : LibC::Double, threshold : LibC::Double, exception : ExceptionInfo*) : Image*
end
