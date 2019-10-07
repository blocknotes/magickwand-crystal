lib LibMagick
  fun acquireDrawInfo = AcquireDrawInfo : DrawInfo*
  fun cloneDrawInfo = CloneDrawInfo(image_info : ImageInfo*, draw_info : DrawInfo*) : DrawInfo*
  fun destroyDrawInfo = DestroyDrawInfo(draw_info : DrawInfo*) : DrawInfo*
  fun drawAffineImage = DrawAffineImage(image : Image*, source : Image*, affine : AffineMatrix*, exception : ExceptionInfo*) : Bool
  fun drawClipPath = DrawClipPath(image : Image*, draw_info : DrawInfo*, id : LibC::Char*, exception : ExceptionInfo*) : Bool
  fun drawGradientImage = DrawGradientImage(image : Image*, draw_info : DrawInfo*, exception : ExceptionInfo*) : Bool
  fun mVGMacroCompare = MVGMacroCompare(target : Void*, source : Void*) : LibC::Int
  fun drawImage = DrawImage(image : Image*, draw_info : DrawInfo*, exception : ExceptionInfo*) : Bool
  fun drawPatternPath = DrawPatternPath(image : Image*, draw_info : DrawInfo*, name : LibC::Char*, pattern : Image**, exception : ExceptionInfo*) : Bool
  fun drawPrimitive = DrawPrimitive(image : Image*, draw_info : DrawInfo*, primitive_info : PrimitiveInfo*, exception : ExceptionInfo*) : Bool
  fun getAffineMatrix = GetAffineMatrix(affine_matrix : AffineMatrix*) : Void
  fun getDrawInfo = GetDrawInfo(image_info : ImageInfo*, draw_info : DrawInfo*) : Void
end
