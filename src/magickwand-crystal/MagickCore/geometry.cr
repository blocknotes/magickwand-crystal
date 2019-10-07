lib LibMagick
  fun getGeometry = GetGeometry(geometry : LibC::Char*, x : LibC::SSizeT*, y : LibC::SSizeT*, width : LibC::SizeT*, height : LibC::SizeT*) : MagickStatusType
  fun getPageGeometry = GetPageGeometry(page_geometry : LibC::Char*) : LibC::Char*
  fun gravityAdjustGeometry = GravityAdjustGeometry(width : LibC::SizeT, height : LibC::SizeT, gravity : GravityType, region : RectangleInfo*) : Void
  fun isGeometry = IsGeometry(geometry : LibC::Char*) : Bool
  fun isSceneGeometry = IsSceneGeometry(geometry : LibC::Char*, pedantic : Bool) : Bool
  fun parseAbsoluteGeometry = ParseAbsoluteGeometry(geometry : LibC::Char*, region_info : RectangleInfo*) : MagickStatusType
  fun parseAffineGeometry = ParseAffineGeometry(geometry : LibC::Char*, affine_matrix : AffineMatrix*, exception : ExceptionInfo*) : MagickStatusType
  fun parseGeometry = ParseGeometry(geometry : LibC::Char*, geometry_info : GeometryInfo*) : MagickStatusType
  fun parseGravityGeometry = ParseGravityGeometry(image : Image*, geometry : LibC::Char*, region_info : RectangleInfo*, exception : ExceptionInfo*) : MagickStatusType
  fun parseMetaGeometry = ParseMetaGeometry(geometry : LibC::Char*, x : LibC::SSizeT*, y : LibC::SSizeT*, width : LibC::SizeT*, height : LibC::SizeT*) : MagickStatusType
  fun parsePageGeometry = ParsePageGeometry(image : Image*, geometry : LibC::Char*, region_info : RectangleInfo*, exception : ExceptionInfo*) : MagickStatusType
  fun parseRegionGeometry = ParseRegionGeometry(image : Image*, geometry : LibC::Char*, region_info : RectangleInfo*, exception : ExceptionInfo*) : MagickStatusType
  fun setGeometry = SetGeometry(image : Image*, geometry : RectangleInfo*) : Void
  fun setGeometryInfo = SetGeometryInfo(geometry_info : GeometryInfo*) : Void
end
