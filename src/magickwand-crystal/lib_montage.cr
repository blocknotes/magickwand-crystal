require "./types"

lib LibMagick
  fun montageImages = MontageImages(image : Image*, montageInfo : MontageInfo*, exceptionInfo : ExceptionInfo*) : Image*
  fun montageImageList = MontageImageList(imageInfo : ImageInfo*, montageInfo : MontageInfo*, image : Image*, exceptionInfo : ExceptionInfo*) : Image*

  fun cloneMontageInfo = CloneMontageInfo(imageInfo : ImageInfo*, montageInfo : MontageInfo*) : MontageInfo*
  fun destroyMontageInfo = DestroyMontageInfo(montageInfo : MontageInfo*) : MontageInfo*

  fun getMontageInfo = GetMontageInfo(imageInfo : ImageInfo*, montageInfo : MontageInfo*) : Void
end
