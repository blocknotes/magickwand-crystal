lib LibMagick
  fun constituteImage = ConstituteImage(columns : LibC::SizeT, rows : LibC::SizeT, map : LibC::Char*, storage : StorageType, pixels : Void*, exception : ExceptionInfo*) : Image*
  fun pingImage = PingImage(image_info : ImageInfo*, exception : ExceptionInfo*) : Image*
  fun pingImages = PingImages(image_info : ImageInfo*, filename : LibC::Char*, exception : ExceptionInfo*) : Image*
  fun readImage = ReadImage(image_info : ImageInfo*, exception : ExceptionInfo*) : Image*
  fun readImages = ReadImages(image_info : ImageInfo*, filename : LibC::Char*, exception : ExceptionInfo*) : Image*
  fun readInlineImage = ReadInlineImage(image_info : ImageInfo*, content : LibC::Char*, exception : ExceptionInfo*) : Image*
  fun writeImage = WriteImage(image_info : ImageInfo*, image : Image*, exception : ExceptionInfo*) : Bool
  fun writeImages = WriteImages(image_info : ImageInfo*, images : Image*, filename : LibC::Char*, exception : ExceptionInfo*) : Bool
end
