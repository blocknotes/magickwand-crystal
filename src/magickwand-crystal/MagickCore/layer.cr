lib LibMagick
  fun coalesceImages = CoalesceImages(image : Image*, exception : ExceptionInfo*) : Image*
  fun disposeImages = DisposeImages(images : Image*, exception : ExceptionInfo*) : Image*
  fun compareImagesLayers = CompareImagesLayers(image : Image*, method : LayerMethod, exception : ExceptionInfo*) : Image*
  fun optimizeImageLayers = OptimizeImageLayers(image : Image*, exception : ExceptionInfo*) : Image*
  fun optimizePlusImageLayers = OptimizePlusImageLayers(image : Image*, exception : ExceptionInfo*) : Image*
  fun optimizeImageTransparency = OptimizeImageTransparency(image : Image*, exception : ExceptionInfo*) : Void
  fun removeDuplicateLayers = RemoveDuplicateLayers(images : Image**, exception : ExceptionInfo*) : Void
  fun removeZeroDelayLayers = RemoveZeroDelayLayers(images : Image**, exception : ExceptionInfo*) : Void
  fun compositeLayers = CompositeLayers(destination : Image*, compose : CompositeOperator, source : Image*, x_offset : LibC::SSizeT, y_offset : LibC::SSizeT, exception : ExceptionInfo*) : Void
  fun mergeImageLayers = MergeImageLayers(image : Image*, method : LayerMethod, exception : ExceptionInfo*) : Image*
end
