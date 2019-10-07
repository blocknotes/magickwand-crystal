lib LibMagick
  fun compositeImage = CompositeImage(image : Image*, composite : Image*, compose : CompositeOperator, clip_to_self : Bool, x_offset : LibC::SSizeT, y_offset : LibC::SSizeT, exception : ExceptionInfo*) : Bool
  fun textureImage = TextureImage(image : Image*, texture : Image*, exception : ExceptionInfo*) : Bool
end
