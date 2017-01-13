require "./types"

lib LibMagick
  fun borderImage
    = BorderImage( image : Image*, rectangleInfo : RectangleInfo*, exceptionInfo : ExceptionInfo* ): Image*
  fun frameImage
    = FrameImage( image : Image*, frameInfo : FrameInfo*, exceptionInfo : ExceptionInfo* ): Image*

  fun raiseImage
    = RaiseImage( image : Image*, rectangleInfo : RectangleInfo*, b : Bool ): Bool
end
