lib LibMagick
  fun cannyEdgeImage = CannyEdgeImage(image : Image*, radius : LibC::Double, sigma : LibC::Double, lower_percent : LibC::Double, upper_percent : LibC::Double, exception : ExceptionInfo*) : Image*
  fun getImageFeatures = GetImageFeatures(image : Image*, distance : LibC::SizeT, exception : ExceptionInfo*) : ChannelFeatures*
  fun houghLineImage = HoughLineImage(image : Image*, width : LibC::SizeT, height : LibC::SizeT, threshold : LibC::SizeT, exception : ExceptionInfo*) : Image*
  fun meanShiftImage = MeanShiftImage(image : Image*, width : LibC::SizeT, height : LibC::SizeT, color_distance : LibC::Double, exception : ExceptionInfo*) : Image*
end
