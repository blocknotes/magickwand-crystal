lib LibMagick
  fun getMagicInfo = GetMagicInfo(magic : LibC::UChar*, length : LibC::SizeT, exception : ExceptionInfo*) : MagicInfo*
  fun getMagicPatternExtent = GetMagicPatternExtent(exception : ExceptionInfo*) : LibC::SizeT
  fun getMagicInfoList = GetMagicInfoList(pattern : LibC::Char*, number_aliases : LibC::SizeT*, exception : ExceptionInfo*) : MagicInfo**
  fun getMagicList = GetMagicList(pattern : LibC::Char*, number_aliases : LibC::SizeT*, exception : ExceptionInfo*) : LibC::Char**
  fun getMagicName = GetMagicName(magic_info : MagicInfo*) : LibC::Char*
  fun listMagicInfo = ListMagicInfo(file : LibStd::File*, exception : ExceptionInfo*) : Bool
end
