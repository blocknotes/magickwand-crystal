require "./types"

lib LibMagick
  fun adaptiveThresholdImage = AdaptiveThresholdImage(image : Image*, s1 : LibC::SizeT, s2 : LibC::SizeT, d : LibC::Double, exceptionInfo : ExceptionInfo*) : Image*
  fun autoThresholdImage = AutoThresholdImage(image : Image*, autoThresholdMethod : AutoThresholdMethod,exceptionInfo : ExceptionInfo*) : Bool

  fun destroyThresholdMap = DestroyThresholdMap(thresholdMap : ThresholdMap*) : ThresholdMap*
  fun getThresholdMap = GetThresholdMap(cp : LibC::Char*, exceptionInfo : ExceptionInfo*) : ThresholdMap*

  fun bilevelImage = BilevelImage(image : Image*, d : LibC::Double, exceptionInfo : ExceptionInfo*) : Bool
  fun blackThresholdImage = BlackThresholdImage(image : Image*, cp : LibC::Char*, exceptionInfo : ExceptionInfo*) : Bool
  fun clampImage = ClampImage(image : Image*, exceptionInfo : ExceptionInfo*) : Bool
  fun listThresholdMaps = ListThresholdMaps(file : LibStd::File*, exceptionInfo : ExceptionInfo*) : Bool
  fun orderedDitherImage = OrderedDitherImage(image : Image*, cp : LibC::Char*, exceptionInfo : ExceptionInfo*) : Bool
  fun perceptibleImage = PerceptibleImage(image : Image*, d : LibC::Double, exceptionInfo : ExceptionInfo*) : Bool
  fun randomThresholdImage = RandomThresholdImage(image : Image*, d1 : LibC::Double, d2 : LibC::Double, exceptionInfo : ExceptionInfo*) : Bool
  fun rangeThresholdImage = RangeThresholdImage(image : Image*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4: LibC::Double, exceptionInfo : ExceptionInfo*) : Bool
  fun whiteThresholdImage = WhiteThresholdImage(image : Image*, cp : LibC::Char*, exceptionInfo : ExceptionInfo*) : Bool
end
