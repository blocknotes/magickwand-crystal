lib LibMagick
  fun compareImages = CompareImages(image : Image*, reconstruct_image : Image*, metric : MetricType, distortion : LibC::Double*, exception : ExceptionInfo*) : Image*
  fun getImageDistortion = GetImageDistortion(image : Image*, reconstruct_image : Image*, metric : MetricType, distortion : LibC::Double*, exception : ExceptionInfo*) : Bool
  fun getImageDistortions = GetImageDistortions(image : Image*, reconstruct_image : Image*, metric : MetricType, exception : ExceptionInfo*) : LibC::Double*
  fun isImagesEqual = IsImagesEqual(image : Image*, reconstruct_image : Image*, exception : ExceptionInfo*) : Bool
  fun setImageColorMetric = SetImageColorMetric(image : Image*, reconstruct_image : Image*, exception : ExceptionInfo*) : Bool
  fun similarityImage = SimilarityImage(image : Image*, reference : Image*, metric : MetricType, similarity_threshold : LibC::Double, offset : RectangleInfo*, similarity_metric : LibC::Double*, exception : ExceptionInfo*) : Image*
end
