lib LibMagick
  fun adaptiveThresholdImage = AdaptiveThresholdImage(image : Image*, width : LibC::SizeT, height : LibC::SizeT, bias : LibC::Double, exception : ExceptionInfo*) : Image*
  fun autoThresholdImage = AutoThresholdImage(image : Image*, method : AutoThresholdMethod, exception : ExceptionInfo*) : Bool
  fun bilevelImage = BilevelImage(image : Image*, threshold : LibC::Double, exception : ExceptionInfo*) : Bool
  fun blackThresholdImage = BlackThresholdImage(image : Image*, thresholds : LibC::Char*, exception : ExceptionInfo*) : Bool
  fun clampImage = ClampImage(image : Image*, exception : ExceptionInfo*) : Bool
  fun destroyThresholdMap = DestroyThresholdMap(map : ThresholdMap*) : ThresholdMap*
  fun getThresholdMap = GetThresholdMap(map_id : LibC::Char*, exception : ExceptionInfo*) : ThresholdMap*
  fun listThresholdMaps = ListThresholdMaps(file : LibStd::File*, exception : ExceptionInfo*) : Bool
  fun orderedDitherImage = OrderedDitherImage(image : Image*, threshold_map : LibC::Char*, exception : ExceptionInfo*) : Bool
  fun perceptibleImage = PerceptibleImage(image : Image*, epsilon : LibC::Double, exception : ExceptionInfo*) : Bool
  fun randomThresholdImage = RandomThresholdImage(image : Image*, min_threshold : LibC::Double, max_threshold : LibC::Double, exception : ExceptionInfo*) : Bool
  fun rangeThresholdImage = RangeThresholdImage(image : Image*, low_black : LibC::Double, low_white : LibC::Double, high_white : LibC::Double, high_black : LibC::Double, exception : ExceptionInfo*) : Bool
  fun whiteThresholdImage = WhiteThresholdImage(image : Image*, thresholds : LibC::Char*, exception : ExceptionInfo*) : Bool
end
