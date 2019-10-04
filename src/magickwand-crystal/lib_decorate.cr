require "./types"

lib LibMagick
  fun borderImage = BorderImage(image : Image*, rectangleInfo : RectangleInfo*, compositeOperator : CompositeOperator, exceptionInfo : ExceptionInfo*) : Image*
  fun frameImage = FrameImage(image : Image*, frameInfo : FrameInfo*, compositeOperator : CompositeOperator, exceptionInfo : ExceptionInfo*) : Image*
  fun raiseImage = RaiseImage(image : Image*, rectangleInfo : RectangleInfo*, bool : Bool, exceptionInfo : ExceptionInfo*) : Bool
end
