lib LibMagick
  fun autoOrientImage = AutoOrientImage(image : Image*, orientation : OrientationType, exception : ExceptionInfo*) : Image*
  fun chopImage = ChopImage(image : Image*, chop_info : RectangleInfo*, exception : ExceptionInfo*) : Image*
  fun consolidateCMYKImages = ConsolidateCMYKImages(images : Image*, exception : ExceptionInfo*) : Image*
  fun cropImage = CropImage(image : Image*, geometry : RectangleInfo*, exception : ExceptionInfo*) : Image*
  fun cropImageToTiles = CropImageToTiles(image : Image*, crop_geometry : LibC::Char*, exception : ExceptionInfo*) : Image*
  fun excerptImage = ExcerptImage(image : Image*, geometry : RectangleInfo*, exception : ExceptionInfo*) : Image*
  fun extentImage = ExtentImage(image : Image*, geometry : RectangleInfo*, exception : ExceptionInfo*) : Image*
  fun flipImage = FlipImage(image : Image*, exception : ExceptionInfo*) : Image*
  fun flopImage = FlopImage(image : Image*, exception : ExceptionInfo*) : Image*
  fun rollImage = RollImage(image : Image*, x_offset : LibC::SSizeT, y_offset : LibC::SSizeT, exception : ExceptionInfo*) : Image*
  fun shaveImage = ShaveImage(image : Image*, shave_info : RectangleInfo*, exception : ExceptionInfo*) : Image*
  fun spliceImage = SpliceImage(image : Image*, geometry : RectangleInfo*, exception : ExceptionInfo*) : Image*
  fun transposeImage = TransposeImage(image : Image*, exception : ExceptionInfo*) : Image*
  fun transverseImage = TransverseImage(image : Image*, exception : ExceptionInfo*) : Image*
  fun trimImage = TrimImage(image : Image*, exception : ExceptionInfo*) : Image*
end
