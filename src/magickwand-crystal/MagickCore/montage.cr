lib LibMagick
  fun cloneMontageInfo = CloneMontageInfo(image_info : ImageInfo*, montage_info : MontageInfo*) : MontageInfo*
  fun destroyMontageInfo = DestroyMontageInfo(montage_info : MontageInfo*) : MontageInfo*
  fun getMontageInfo = GetMontageInfo(image_info : ImageInfo*, montage_info : MontageInfo*) : Void
  fun montageImages = MontageImages(images : Image*, montage_info : MontageInfo*, exception : ExceptionInfo*) : Image*
  fun montageImageList = MontageImageList(image_info : ImageInfo*, montage_info : MontageInfo*, images : Image*, exception : ExceptionInfo*) : Image*
end
