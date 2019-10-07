lib LibMagick
  fun getImageDynamicThreshold = GetImageDynamicThreshold(image : Image*, cluster_threshold : LibC::Double, smooth_threshold : LibC::Double, pixel : PixelInfo*, exception : ExceptionInfo*) : Bool
  fun segmentImage = SegmentImage(image : Image*, colorspace : ColorspaceType, verbose : Bool, cluster_threshold : LibC::Double, smooth_threshold : LibC::Double, exception : ExceptionInfo*) : Bool
end
