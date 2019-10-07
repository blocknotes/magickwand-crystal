lib LibMagick
  fun acquireResampleFilter = AcquireResampleFilter(image : Image*, exception : ExceptionInfo*) : ResampleFilter*
  fun destroyResampleFilter = DestroyResampleFilter(resample_filter : ResampleFilter*) : ResampleFilter*
  fun resamplePixelColor = ResamplePixelColor(resample_filter : ResampleFilter*, u0 : LibC::Double, v0 : LibC::Double, pixel : PixelInfo*, exception : ExceptionInfo*) : Bool
  fun scaleResampleFilter = ScaleResampleFilter(resample_filter : ResampleFilter*, dux : LibC::Double, duy : LibC::Double, dvx : LibC::Double, dvy : LibC::Double) : Void
  fun setResampleFilter = SetResampleFilter(resample_filter : ResampleFilter*, filter : FilterType) : Void
  fun setResampleFilterInterpolateMethod = SetResampleFilterInterpolateMethod(resample_filter : ResampleFilter*, method : PixelInterpolateMethod) : Bool
  fun setResampleFilterVirtualPixelMethod = SetResampleFilterVirtualPixelMethod(resample_filter : ResampleFilter*, method : VirtualPixelMethod) : Bool
end
