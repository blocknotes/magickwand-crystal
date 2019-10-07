lib LibMagick
  fun acquireMagickResource = AcquireMagickResource(type : ResourceType, size : MagickSizeType) : Bool
  fun getPathTemplate = GetPathTemplate(path : LibC::Char*) : Bool
  fun acquireUniqueFileResource = AcquireUniqueFileResource(path : LibC::Char*) : LibC::Int
  fun getMagickResource = GetMagickResource(type : ResourceType) : MagickSizeType
  fun getMagickResourceLimit = GetMagickResourceLimit(type : ResourceType) : MagickSizeType
  fun listMagickResourceInfo = ListMagickResourceInfo(file : LibStd::File*, magick_unused : ExceptionInfo*) : Bool
  fun relinquishMagickResource = RelinquishMagickResource(type : ResourceType, size : MagickSizeType) : Void
  fun relinquishUniqueFileResource = RelinquishUniqueFileResource(path : LibC::Char*) : Bool
  fun setMagickResourceLimit = SetMagickResourceLimit(type : ResourceType, limit : MagickSizeType) : Bool
end
