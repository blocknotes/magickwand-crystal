lib LibMagick
  fun borderImage = BorderImage(image : Image*, border_info : RectangleInfo*, compose : CompositeOperator, exception : ExceptionInfo*) : Image*
  fun frameImage = FrameImage(image : Image*, frame_info : FrameInfo*, compose : CompositeOperator, exception : ExceptionInfo*) : Image*
  fun raiseImage = RaiseImage(image : Image*, raise_info : RectangleInfo*, raise : Bool, exception : ExceptionInfo*) : Bool
end
