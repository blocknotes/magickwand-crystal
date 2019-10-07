lib LibMagick
  fun cloneImageArtifacts = CloneImageArtifacts(image : Image*, clone_image : Image*) : Bool
  fun defineImageArtifact = DefineImageArtifact(image : Image*, artifact : LibC::Char*) : Bool
  fun deleteImageArtifact = DeleteImageArtifact(image : Image*, artifact : LibC::Char*) : Bool
  fun destroyImageArtifacts = DestroyImageArtifacts(image : Image*) : Void
  fun getImageArtifact = GetImageArtifact(image : Image*, artifact : LibC::Char*) : LibC::Char*
  fun getNextImageArtifact = GetNextImageArtifact(image : Image*) : LibC::Char*
  fun removeImageArtifact = RemoveImageArtifact(image : Image*, artifact : LibC::Char*) : LibC::Char*
  fun resetImageArtifactIterator = ResetImageArtifactIterator(image : Image*) : Void
  fun setImageArtifact = SetImageArtifact(image : Image*, artifact : LibC::Char*, value : LibC::Char*) : Bool
end
