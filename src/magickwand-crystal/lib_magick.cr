require "./types"

@[Link("MagickWand")]
lib LibMagick
  fun magickGetException = MagickGetException(wand : MagickWand*, exceptionType : ExceptionType*) : LibC::Char*
  fun magickGetExceptionType = MagickGetExceptionType(wand : MagickWand*) : ExceptionType

  fun isMagickWand = IsMagickWand(wand : MagickWand*) : Bool
  fun isMagickWandInstantiated = IsMagickWandInstantiated : Bool
  fun magickClearException = MagickClearException(wand : MagickWand*) : Bool
  fun magickSetIteratorIndex = MagickSetIteratorIndex(wand : MagickWand*, ss : LibC::SSizeT) : Bool

  fun cloneMagickWand = CloneMagickWand(wand : MagickWand*) : MagickWand*
  fun destroyMagickWand = DestroyMagickWand(wand : MagickWand*) : MagickWand*
  fun newMagickWand = NewMagickWand : MagickWand*
  fun newMagickWandFromImage = NewMagickWandFromImage(image : Image*) : MagickWand*

  fun magickGetIteratorIndex = MagickGetIteratorIndex(wand : MagickWand*) : LibC::SSizeT

  fun clearMagickWand = ClearMagickWand(wand : MagickWand*) : Void
  fun magickWandGenesis = MagickWandGenesis : Void
  fun magickWandTerminus = MagickWandTerminus : Void
  fun magickRelinquishMemory = MagickRelinquishMemory(ptr : Void*) : Void*
  fun magickResetIterator = MagickResetIterator(wand : MagickWand*) : Void
  fun magickSetFirstIterator = MagickSetFirstIterator(wand : MagickWand*) : Void
  fun magickSetLastIterator = MagickSetLastIterator(wand : MagickWand*) : Void
end
