lib LibMagick
  fun clearPixelIterator = ClearPixelIterator(iterator : PixelIterator*) : Void
  fun clonePixelIterator = ClonePixelIterator(iterator : PixelIterator*) : PixelIterator*
  fun destroyPixelIterator = DestroyPixelIterator(iterator : PixelIterator*) : PixelIterator*
  fun isPixelIterator = IsPixelIterator(iterator : PixelIterator*) : Bool
  fun newPixelIterator = NewPixelIterator(wand : MagickWand*) : PixelIterator*
  fun pixelClearIteratorException = PixelClearIteratorException(iterator : PixelIterator*) : Bool
  fun newPixelRegionIterator = NewPixelRegionIterator(wand : MagickWand*, x : LibC::SSizeT, y : LibC::SSizeT, width : LibC::SizeT, height : LibC::SizeT) : PixelIterator*
  fun pixelGetCurrentIteratorRow = PixelGetCurrentIteratorRow(iterator : PixelIterator*, number_wands : LibC::SizeT*) : PixelWand**
  fun pixelGetIteratorException = PixelGetIteratorException(iterator : PixelIterator*, severity : ExceptionType*) : LibC::Char*
  fun pixelGetIteratorExceptionType = PixelGetIteratorExceptionType(iterator : PixelIterator*) : ExceptionType
  fun pixelGetIteratorRow = PixelGetIteratorRow(iterator : PixelIterator*) : LibC::SSizeT
  fun pixelGetNextIteratorRow = PixelGetNextIteratorRow(iterator : PixelIterator*, number_wands : LibC::SizeT*) : PixelWand**
  fun pixelGetPreviousIteratorRow = PixelGetPreviousIteratorRow(iterator : PixelIterator*, number_wands : LibC::SizeT*) : PixelWand**
  fun pixelResetIterator = PixelResetIterator(iterator : PixelIterator*) : Void
  fun pixelSetFirstIteratorRow = PixelSetFirstIteratorRow(iterator : PixelIterator*) : Void
  fun pixelSetIteratorRow = PixelSetIteratorRow(iterator : PixelIterator*, row : LibC::SSizeT) : Bool
  fun pixelSetLastIteratorRow = PixelSetLastIteratorRow(iterator : PixelIterator*) : Void
  fun pixelSyncIterator = PixelSyncIterator(iterator : PixelIterator*) : Bool
end
