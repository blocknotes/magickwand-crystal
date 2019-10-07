lib LibMagick
  fun floodfillPaintImage = FloodfillPaintImage(image : Image*, draw_info : DrawInfo*, target : PixelInfo*, x_offset : LibC::SSizeT, y_offset : LibC::SSizeT, invert : Bool, exception : ExceptionInfo*) : Bool
  fun gradientImage = GradientImage(image : Image*, type : GradientType, method : SpreadMethod, stops : StopInfo*, number_stops : LibC::SizeT, exception : ExceptionInfo*) : Bool
  fun oilPaintImage = OilPaintImage(image : Image*, radius : LibC::Double, sigma : LibC::Double, exception : ExceptionInfo*) : Image*
  fun opaquePaintImage = OpaquePaintImage(image : Image*, target : PixelInfo*, fill : PixelInfo*, invert : Bool, exception : ExceptionInfo*) : Bool
  fun transparentPaintImage = TransparentPaintImage(image : Image*, target : PixelInfo*, opacity : Quantum, invert : Bool, exception : ExceptionInfo*) : Bool
  fun transparentPaintImageChroma = TransparentPaintImageChroma(image : Image*, low : PixelInfo*, high : PixelInfo*, opacity : Quantum, invert : Bool, exception : ExceptionInfo*) : Bool
end
