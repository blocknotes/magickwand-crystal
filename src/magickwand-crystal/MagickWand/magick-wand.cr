@[Link("MagickWand")]
lib LibMagick
  fun clearMagickWand = ClearMagickWand(wand : MagickWand*) : Void
  fun cloneMagickWand = CloneMagickWand(wand : MagickWand*) : MagickWand*
  fun destroyMagickWand = DestroyMagickWand(wand : MagickWand*) : MagickWand*
  fun isMagickWand = IsMagickWand(wand : MagickWand*) : Bool
  fun magickClearException = MagickClearException(wand : MagickWand*) : Bool
  fun magickGetException = MagickGetException(wand : MagickWand*, severity : ExceptionType*) : LibC::Char*
  fun magickGetExceptionType = MagickGetExceptionType(wand : MagickWand*) : ExceptionType
  fun magickGetIteratorIndex = MagickGetIteratorIndex(wand : MagickWand*) : LibC::SSizeT
  fun magickQueryConfigureOption = MagickQueryConfigureOption(option : LibC::Char*) : LibC::Char*
  fun magickQueryConfigureOptions = MagickQueryConfigureOptions(pattern : LibC::Char*, number_options : LibC::SizeT*) : LibC::Char**
  fun magickQueryFontMetrics = MagickQueryFontMetrics(wand : MagickWand*, drawing_wand : DrawingWand*, text : LibC::Char*) : LibC::Double*
  fun magickQueryMultilineFontMetrics = MagickQueryMultilineFontMetrics(wand : MagickWand*, drawing_wand : DrawingWand*, text : LibC::Char*) : LibC::Double*
  fun magickQueryFonts = MagickQueryFonts(pattern : LibC::Char*, number_fonts : LibC::SizeT*) : LibC::Char**
  fun magickQueryFormats = MagickQueryFormats(pattern : LibC::Char*, number_formats : LibC::SizeT*) : LibC::Char**
  fun magickRelinquishMemory = MagickRelinquishMemory(memory : Void*) : Void*
  fun magickResetIterator = MagickResetIterator(wand : MagickWand*) : Void
  fun magickSetFirstIterator = MagickSetFirstIterator(wand : MagickWand*) : Void
  fun magickSetIteratorIndex = MagickSetIteratorIndex(wand : MagickWand*, index : LibC::SSizeT) : Bool
  fun magickSetLastIterator = MagickSetLastIterator(wand : MagickWand*) : Void
  fun magickWandGenesis = MagickWandGenesis : Void
  fun magickWandTerminus = MagickWandTerminus : Void
  fun newMagickWand = NewMagickWand : MagickWand*
  fun newMagickWandFromImage = NewMagickWandFromImage(image : Image*) : MagickWand*
  fun isMagickWandInstantiated = IsMagickWandInstantiated : Bool
end
