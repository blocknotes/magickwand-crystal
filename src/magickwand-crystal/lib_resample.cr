require "./types"

lib LibMagick
  fun resamplePixelColor = ResamplePixelColor(resampleFilter : ResampleFilter*, d1 : LibC::Double, d2 : LibC::Double, pixelInfo : PixelInfo*, exceptionInfo : ExceptionInfo*) : Bool
  fun setResampleFilterInterpolateMethod = SetResampleFilterInterpolateMethod(resampleFilter : ResampleFilter*, pixelInterpolateMethod : PixelInterpolateMethod) : Bool
  fun setResampleFilterVirtualPixelMethod = SetResampleFilterVirtualPixelMethod(resampleFilter : ResampleFilter*, virtualPixelMethod : VirtualPixelMethod) : Bool

  fun acquireResampleFilter = AcquireResampleFilter(image : Image*, exceptionInfo : ExceptionInfo*) : ResampleFilter*
  fun destroyResampleFilter = DestroyResampleFilter(resampleFilter : ResampleFilter*) : ResampleFilter*

  fun scaleResampleFilter = ScaleResampleFilter(resampleFilter : ResampleFilter*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double) : Void
  fun setResampleFilter = SetResampleFilter(resampleFilter : ResampleFilter*, filterType : FilterType) : Void
end
