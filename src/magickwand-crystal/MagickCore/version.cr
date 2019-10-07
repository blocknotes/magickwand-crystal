lib LibMagick
  fun getMagickCopyright = GetMagickCopyright : LibC::Char*
  fun getMagickDelegates = GetMagickDelegates : LibC::Char*
  fun getMagickFeatures = GetMagickFeatures : LibC::Char*
  fun getMagickHomeURL = GetMagickHomeURL : LibC::Char*
  fun getMagickLicense = GetMagickLicense : LibC::Char*
  fun getMagickPackageName = GetMagickPackageName : LibC::Char*
  fun getMagickQuantumDepth = GetMagickQuantumDepth(depth : LibC::SizeT*) : LibC::Char*
  fun getMagickQuantumRange = GetMagickQuantumRange(range : LibC::SizeT*) : LibC::Char*
  fun getMagickReleaseDate = GetMagickReleaseDate : LibC::Char*
  fun getMagickSignature = GetMagickSignature(nonce : StringInfo*) : LibC::UInt
  fun getMagickVersion = GetMagickVersion(version : LibC::SizeT*) : LibC::Char*
  fun listMagickVersion = ListMagickVersion(file : LibStd::File*) : Void
end
