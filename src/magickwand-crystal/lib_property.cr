require "./types"

lib LibMagick
  fun magickGetFilename
    = MagickGetFilename( wand : MagickWand* ): LibC::Char*
  fun magickGetFormat
    = MagickGetFormat( wand : MagickWand* ): LibC::Char*
  fun magickGetFont
    = MagickGetFont( wand : MagickWand* ): LibC::Char*
  fun magickGetHomeURL
    = MagickGetHomeURL(): LibC::Char*
  fun magickGetImageArtifact
    = MagickGetImageArtifact( wand : MagickWand*, cp : LibC::Char* ): LibC::Char*
  fun magickGetImageArtifacts
    = MagickGetImageArtifacts( wand : MagickWand*, cp : LibC::Char*, sp : LibC::SizeT* ): LibC::Char**
  fun magickGetImageProfiles
    = MagickGetImageProfiles( wand : MagickWand*, cp : LibC::Char*, sp : LibC::SizeT* ): LibC::Char**
  fun magickGetImageProperty
    = MagickGetImageProperty( wand : MagickWand*, cp : LibC::Char* ): LibC::Char*
  fun magickGetImageProperties
    = MagickGetImageProperties( wand : MagickWand*, cp : LibC::Char*, sp : LibC::SizeT* ): LibC::Char**
  fun magickGetOption
    = MagickGetOption( wand : MagickWand*, cp : LibC::Char* ): LibC::Char*
  fun magickGetOptions
    = MagickGetOptions( wand : MagickWand*, cp : LibC::Char*, sp : LibC::SizeT* ): LibC::Char**
  fun magickQueryConfigureOption
    = MagickQueryConfigureOption( cp : LibC::Char* ): LibC::Char*
  fun magickQueryConfigureOptions
    = MagickQueryConfigureOptions( cp : LibC::Char*, sp : LibC::SizeT* ): LibC::Char**
  fun magickQueryFonts
    = MagickQueryFonts( cp : LibC::Char*, sp : LibC::SizeT* ): LibC::Char**
  fun magickQueryFormats
    = MagickQueryFormats( cp : LibC::Char*, sp : LibC::SizeT* ): LibC::Char**

  fun magickGetColorspace
    = MagickGetColorspace( wand : MagickWand* ): ColorspaceType

  fun magickGetCompression
    = MagickGetCompression( wand : MagickWand* ): CompressionType

  fun magickGetCopyright
    = MagickGetCopyright(): LibC::Char*
  fun magickGetPackageName
    = MagickGetPackageName(): LibC::Char*
  fun magickGetQuantumDepth
    = MagickGetQuantumDepth( sp : LibC::SizeT* ): LibC::Char*
  fun magickGetQuantumRange
    = MagickGetQuantumRange( sp : LibC::SizeT* ): LibC::Char*
  fun magickGetReleaseDate
    = MagickGetReleaseDate(): LibC::Char*
  fun magickGetVersion
    = MagickGetVersion( sp : LibC::SizeT* ): LibC::Char*

  fun magickGetPointsize
    = MagickGetPointsize( wand : MagickWand* ): LibC::Double
  fun magickGetSamplingFactors
    = MagickGetSamplingFactors( wand : MagickWand*, sp : LibC::SizeT* ): LibC::Double*
  fun magickQueryFontMetrics
    = MagickQueryFontMetrics( wand : MagickWand*, wand2 : DrawingWand*, cp : LibC::Char* ): LibC::Double*
  fun magickQueryMultilineFontMetrics
    = MagickQueryMultilineFontMetrics( wand : MagickWand*, wand2 : DrawingWand*, cp : LibC::Char* ): LibC::Double*

  fun magickGetGravity
    = MagickGetGravity( wand : MagickWand* ): GravityType

  fun magickGetType
    = MagickGetType( wand : MagickWand* ): ImageType

  fun magickGetInterlaceScheme
    = MagickGetInterlaceScheme( wand : MagickWand* ): InterlaceType

  fun magickGetInterpolateMethod
    = MagickGetInterpolateMethod( wand : MagickWand* ): PixelInterpolateMethod

  fun magickGetOrientation
    = MagickGetOrientation( wand : MagickWand* ): OrientationType

  fun magickDeleteImageArtifact
    = MagickDeleteImageArtifact( wand : MagickWand*, cp : LibC::Char* ): Bool
  fun magickDeleteImageProperty
    = MagickDeleteImageProperty( wand : MagickWand*, cp : LibC::Char* ): Bool
  fun magickDeleteOption
    = MagickDeleteOption( wand : MagickWand*, cp : LibC::Char* ): Bool
  fun magickGetAntialias
    = MagickGetAntialias( wand : MagickWand* ): Bool
  fun magickGetPage
    = MagickGetPage( wand : MagickWand*, sp1 : LibC::SizeT*, sp2 : LibC::SizeT*, ssp1 : LibC::SSizeT*, ssp2 : LibC::SSizeT* ): Bool
  fun magickGetResolution
    = MagickGetResolution( wand : MagickWand*, dp1 : LibC::Double*, dp2 : LibC::Double* ): Bool
  fun magickGetSize
    = MagickGetSize( wand : MagickWand*, sp1 : LibC::SizeT*, sp2 : LibC::SizeT* ): Bool
  fun magickGetSizeOffset
    = MagickGetSizeOffset( wand : MagickWand*, ssp : LibC::SSizeT* ): Bool
  fun magickProfileImage
    = MagickProfileImage( wand : MagickWand*, cp : LibC::Char*, ptr : Void*, s : LibC::SizeT ): Bool
  fun magickSetAntialias
    = MagickSetAntialias( wand : MagickWand*, b : Bool ): Bool
  fun magickSetBackgroundColor
    = MagickSetBackgroundColor( wand : MagickWand*, wand2 : PixelWand* ): Bool
  fun magickSetColorspace
    = MagickSetColorspace( wand : MagickWand*, colorspaceType : ColorspaceType ): Bool
  fun magickSetCompression
    = MagickSetCompression( wand : MagickWand*, compressionType : CompressionType ): Bool
  fun magickSetCompressionQuality
    = MagickSetCompressionQuality( wand : MagickWand*, s : LibC::SizeT ): Bool
  fun magickSetDepth
    = MagickSetDepth( wand : MagickWand*, s : LibC::SizeT ): Bool
  fun magickSetExtract
    = MagickSetExtract( wand : MagickWand*, cp : LibC::Char* ): Bool
  fun magickSetFilename
    = MagickSetFilename( wand : MagickWand*, cp : LibC::Char* ): Bool
  fun magickSetFormat
    = MagickSetFormat( wand : MagickWand*, cp : LibC::Char* ): Bool
  fun magickSetFont
    = MagickSetFont( wand : MagickWand*, cp : LibC::Char* ): Bool
  fun magickSetGravity
    = MagickSetGravity( wand : MagickWand*, gravityType : GravityType): Bool
  fun magickSetImageArtifact
    = MagickSetImageArtifact( wand : MagickWand*, cp : LibC::Char*, cp : LibC::Char* ): Bool
  fun magickSetImageProfile
    = MagickSetImageProfile( wand : MagickWand*, cp : LibC::Char*, ptr : Void*, s : LibC::SizeT ): Bool
  fun magickSetImageProperty
    = MagickSetImageProperty( wand : MagickWand*, cp : LibC::Char*, cp : LibC::Char* ): Bool
  fun magickSetInterlaceScheme
    = MagickSetInterlaceScheme( wand : MagickWand*, interlaceType : InterlaceType ): Bool
  fun magickSetInterpolateMethod
    = MagickSetInterpolateMethod( wand : MagickWand*, interpolatePixelMethod : PixelInterpolateMethod ): Bool
  fun magickSetOption
    = MagickSetOption( wand : MagickWand*, cp1 : LibC::Char*, cp2 : LibC::Char* ): Bool
  fun magickSetOrientation
    = MagickSetOrientation( wand : MagickWand*, orientationType : OrientationType ): Bool
  fun magickSetPage
    = MagickSetPage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT ): Bool
  fun magickSetPassphrase
    = MagickSetPassphrase( wand : MagickWand*, cp : LibC::Char* ): Bool
  fun magickSetPointsize
    = MagickSetPointsize( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickSetResolution
    = MagickSetResolution( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickSetResourceLimit
    = MagickSetResourceLimit( type : ResourceType, limit : MagickSizeType ): Bool
  fun magickSetSamplingFactors
    = MagickSetSamplingFactors( wand : MagickWand*, s : LibC::SizeT, dp : LibC::Double* ): Bool
  fun magickSetSize
    = MagickSetSize( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT ): Bool
  fun magickSetSizeOffset
    = MagickSetSizeOffset( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT ): Bool
  fun magickSetType
    = MagickSetType( wand : MagickWand*, imageType : ImageType ): Bool

  fun magickSetProgressMonitor
    = MagickSetProgressMonitor( wand : MagickWand*, magickProgressMonitor : MagickProgressMonitor, ptr : Void* ): MagickProgressMonitor

  fun magickGetResource
    = MagickGetResource( type : ResourceType ): MagickSizeType
  fun magickGetResourceLimit
    = MagickGetResourceLimit( type : ResourceType ): MagickSizeType

  fun magickGetBackgroundColor
    = MagickGetBackgroundColor( wand : MagickWand* ): PixelWand*

  fun magickGetOrientationType
    = MagickGetOrientationType( wand : MagickWand* ): OrientationType

  fun magickGetCompressionQuality
    = MagickGetCompressionQuality( wand : MagickWand* ): LibC::SizeT

  fun magickGetImageProfile
    = MagickGetImageProfile( wand : MagickWand*, cp : LibC::Char*, sp : LibC::SizeT* ): LibC::UChar*
  fun magickRemoveImageProfile
    = MagickRemoveImageProfile( wand : MagickWand*, cp : LibC::Char*, sp : LibC::SizeT* ): LibC::UChar*
end
