require "./types"

@[Link("MagickWand")]
lib LibMagick
  # char* functions
  fun pixelGetIteratorException
    = PixelGetIteratorException( iterator : PixelIterator*, exceptionType : ExceptionType* ): LibC::Char*

  # ExceptionType functions
  fun pixelGetIteratorExceptionType
    = PixelGetIteratorExceptionType( iterator : PixelIterator* ): ExceptionType

  # bool functions
  fun isPixelIterator
    = IsPixelIterator( iterator : PixelIterator* ): Bool
  fun pixelClearIteratorException
    = PixelClearIteratorException( iterator : PixelIterator* ): Bool
  fun pixelSetIteratorRow
    = PixelSetIteratorRow( iterator : PixelIterator*, row : LibC::SSizeT ): Bool
  fun pixelSyncIterator
    = PixelSyncIterator( iterator : PixelIterator* ): Bool

  # PixelIterator* functions
  fun clonePixelIterator
    = ClonePixelIterator( iterator : PixelIterator* ): PixelIterator*
  fun destroyPixelIterator
    = DestroyPixelIterator( iterator : PixelIterator* ): PixelIterator*
  fun newPixelIterator
    = NewPixelIterator( wand : MagickWand* ): PixelIterator*
  fun newPixelRegionIterator
    = NewPixelRegionIterator( wand : MagickWand*, x : LibC::SSizeT, y : LibC::SSizeT, width : LibC::SizeT, height : LibC::SizeT ): PixelIterator*

  # PixelWand** functions
  fun pixelGetCurrentIteratorRow
    = PixelGetCurrentIteratorRow( iterator : PixelIterator*, number_wands : LibC::SizeT*): PixelWand**
  fun pixelGetNextIteratorRow
    = PixelGetNextIteratorRow( iterator : PixelIterator*, number_wands : LibC::SizeT*): PixelWand**
  fun pixelGetPreviousIteratorRow
    = PixelGetPreviousIteratorRow( iterator : PixelIterator*, number_wands : LibC::SizeT*): PixelWand**

  # ssize_t functions
  fun pixelGetIteratorRow
    = PixelGetIteratorRow( iterator : PixelIterator*): LibC::SSizeT

  # void functions
  fun clearPixelIterator
    = ClearPixelIterator( iterator : PixelIterator*): Void
  fun pixelResetIterator
    = PixelResetIterator( iterator : PixelIterator*): Void
  fun pixelSetFirstIteratorRow
    = PixelSetFirstIteratorRow( iterator : PixelIterator*): Void
  fun pixelSetLastIteratorRow
    = PixelSetLastIteratorRow( iterator : PixelIterator*): Void
end
