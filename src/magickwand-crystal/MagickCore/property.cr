lib LibMagick
  fun cloneImageProperties = CloneImageProperties(image : Image*, clone_image : Image*) : Bool
  fun defineImageProperty = DefineImageProperty(image : Image*, property : LibC::Char*, exception : ExceptionInfo*) : Bool
  fun deleteImageProperty = DeleteImageProperty(image : Image*, property : LibC::Char*) : Bool
  fun destroyImageProperties = DestroyImageProperties(image : Image*) : Void
  fun formatImageProperty = FormatImageProperty(image : Image*, property : LibC::Char*, format : LibC::Char*) : Bool
  fun getImageProperty = GetImageProperty(image : Image*, property : LibC::Char*, exception : ExceptionInfo*) : LibC::Char*
  fun getMagickProperty = GetMagickProperty(image_info : ImageInfo*, image : Image*, property : LibC::Char*, exception : ExceptionInfo*) : LibC::Char*
  fun getNextImageProperty = GetNextImageProperty(image : Image*) : LibC::Char*
  fun interpretImageProperties = InterpretImageProperties(image_info : ImageInfo*, image : Image*, embed_text : LibC::Char*, exception : ExceptionInfo*) : LibC::Char*
  fun removeImageProperty = RemoveImageProperty(image : Image*, property : LibC::Char*) : LibC::Char*
  fun resetImagePropertyIterator = ResetImagePropertyIterator(image : Image*) : Void
  fun setImageProperty = SetImageProperty(image : Image*, property : LibC::Char*, value : LibC::Char*, exception : ExceptionInfo*) : Bool
end
