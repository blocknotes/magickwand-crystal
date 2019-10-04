require "./types"

lib LibMagick
  # char* functions
  fun magickGetImageFilename = MagickGetImageFilename(wand : MagickWand*) : LibC::Char*
  fun magickGetImageFormat = MagickGetImageFormat(wand : MagickWand*) : LibC::Char*
  fun magickGetImageSignature = MagickGetImageSignature(wand : MagickWand*) : LibC::Char*
  fun magickIdentifyImage = MagickIdentifyImage(wand : MagickWand*) : LibC::Char*

  # double/double* functions
  fun magickGetImageDistortions = MagickGetImageDistortions(magickWand : MagickWand*, magickWand : MagickWand*, metricType : MetricType) : LibC::Double*
  fun magickGetImageFuzz = MagickGetImageFuzz(wand : MagickWand*) : LibC::Double
  fun magickGetImageGamma = MagickGetImageGamma(wand : MagickWand*) : LibC::Double
  fun magickGetImageTotalInkDensity = MagickGetImageTotalInkDensity(wand : MagickWand*) : LibC::Double

  # Bool functions
  fun magickAdaptiveBlurImage = MagickAdaptiveBlurImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickAdaptiveResizeImage = MagickAdaptiveResizeImage(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT) : Bool
  fun magickAdaptiveSharpenImage = MagickAdaptiveSharpenImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickAdaptiveThresholdImage = MagickAdaptiveThresholdImage(magickWand : MagickWand*, sizeT1 : LibC::SizeT, sizeT2 : LibC::SizeT, double : LibC::Double) : Bool
  fun magickAddImage = MagickAddImage(wand1 : MagickWand*, wand2 : MagickWand*) : Bool
  fun magickAddNoiseImage = MagickAddNoiseImage(magickWand : MagickWand*, noiseType : NoiseType, double : LibC::Double) : Bool
  fun magickAffineTransformImage = MagickAffineTransformImage(wand : MagickWand*, drawingWand : DrawingWand*) : Bool
  fun magickAnnotateImage = MagickAnnotateImage(wand : MagickWand*, drawingWand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, pc : LibC::Char*) : Bool
  fun magickAnimateImages = MagickAnimateImages(wand : MagickWand*, pc : LibC::Char*) : Bool
  fun magickAutoGammaImage = MagickAutoGammaImage(wand : MagickWand*) : Bool
  fun magickAutoLevelImage = MagickAutoLevelImage(wand : MagickWand*) : Bool
  fun magickAutoOrientImage = MagickAutoOrientImage(wand : MagickWand*) : Bool
  fun magickAutoThresholdImage = MagickAutoThresholdImage(magickWand : MagickWand*, autoThresholdMethod : AutoThresholdMethod) : Bool
  fun magickBlackThresholdImage = MagickBlackThresholdImage(wand : MagickWand*, pixelWand : PixelWand*) : Bool
  fun magickBlueShiftImage = MagickBlueShiftImage(wand : MagickWand*, d : LibC::Double) : Bool
  fun magickBlurImage = MagickBlurImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickBorderImage = MagickBorderImage(magickWand : MagickWand*, pixelWand : PixelWand*, sizeT1 : LibC::SizeT, sizeT2 : LibC::SizeT, compositeOperator : CompositeOperator) : Bool
  fun magickBrightnessContrastImage = MagickBrightnessContrastImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickCannyEdgeImage = MagickCannyEdgeImage(magickWand : MagickWand*, double1 : LibC::Double, double2 : LibC::Double, double3 : LibC::Double, double4 : LibC::Double) : Bool
  fun magickCharcoalImage = MagickCharcoalImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickChopImage = MagickChopImage(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT) : Bool
  fun magickCLAHEImage = MagickCLAHEImage(magickWand : MagickWand*, sizeT1 : LibC::SizeT, sizeT2 : LibC::SizeT, double1 : LibC::Double, double2 : LibC::Double) : Bool
  fun magickClampImage = MagickClampImage(wand : MagickWand*) : Bool
  fun magickClipImage = MagickClipImage(wand : MagickWand*) : Bool
  fun magickClipImagePath = MagickClipImagePath(wand : MagickWand*, pc : LibC::Char*, b : Bool) : Bool
  fun magickClutImage = MagickClutImage(magickWand1 : MagickWand*, magickWand2 : MagickWand*, pixelInterpolateMethod : PixelInterpolateMethod) : Bool
  fun magickColorDecisionListImage = MagickColorDecisionListImage(wand : MagickWand*, pc : LibC::Char*) : Bool
  fun magickColorizeImage = MagickColorizeImage(wand : MagickWand*, pixelWand1 : PixelWand*, pixelWand2 : PixelWand*) : Bool
  fun magickColorMatrixImage = MagickColorMatrixImage(wand : MagickWand*, kernelInfo : KernelInfo*) : Bool
  fun magickCommentImage = MagickCommentImage(wand : MagickWand*, pc : LibC::Char*) : Bool
  fun magickCompositeImage = MagickCompositeImage(magickWand1 : MagickWand*, magickWand2 : MagickWand*, compositeOperator : CompositeOperator, bool : Bool, sSizeT1 : LibC::SSizeT, sSizeT2 : LibC::SSizeT) : Bool
  fun magickCompositeImageGravity = MagickCompositeImageGravity(wand1 : MagickWand*, wand2 : MagickWand*, compositeOperator : CompositeOperator, gravityType : GravityType) : Bool
  fun magickCompositeLayers = MagickCompositeLayers(wand1 : MagickWand*, wand2 : MagickWand*, compositeOperator : CompositeOperator, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT) : Bool
  fun magickConnectedComponentsImage = MagickConnectedComponentsImage(magickWand : MagickWand*, sizeT : LibC::SizeT, cCObjectInfo : CCObjectInfo**) : Bool
  fun magickConstituteImage = MagickConstituteImage(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, pc : LibC::Char*, storageType : StorageType, ptr : Void*) : Bool
  fun magickContrastImage = MagickContrastImage(wand : MagickWand*, b : Bool) : Bool
  fun magickContrastStretchImage = MagickContrastStretchImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickConvolveImage = MagickConvolveImage(magickWand : MagickWand*, kernelInfo : KernelInfo*) : Bool
  fun magickCropImage = MagickCropImage(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT) : Bool
  fun magickCycleColormapImage = MagickCycleColormapImage(wand : MagickWand*, ss : LibC::SSizeT) : Bool
  fun magickDecipherImage = MagickDecipherImage(wand : MagickWand*, pc : LibC::Char*) : Bool
  fun magickDeskewImage = MagickDeskewImage(wand : MagickWand*, d : LibC::Double) : Bool
  fun magickDespeckleImage = MagickDespeckleImage(wand : MagickWand*) : Bool
  fun magickDisplayImage = MagickDisplayImage(wand : MagickWand*, pc : LibC::Char*) : Bool
  fun magickDisplayImages = MagickDisplayImages(wand : MagickWand*, pc : LibC::Char*) : Bool
  fun magickDistortImage = MagickDistortImage(magickWand : MagickWand*, distortMethod : DistortMethod, sizeT : LibC::SizeT, double : LibC::Double*, bool : Bool) : Bool
  fun magickDrawImage = MagickDrawImage(wand : MagickWand*, drawingWand : DrawingWand*) : Bool
  fun magickEdgeImage = MagickEdgeImage(wand : MagickWand*, d : LibC::Double) : Bool
  fun magickEmbossImage = MagickEmbossImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickEncipherImage = MagickEncipherImage(wand : MagickWand*, pc : LibC::Char*) : Bool
  fun magickEnhanceImage = MagickEnhanceImage(wand : MagickWand*) : Bool
  fun magickEqualizeImage = MagickEqualizeImage(wand : MagickWand*) : Bool
  fun magickEvaluateImage = MagickEvaluateImage(wand : MagickWand*, magickEvaluateOperator : MagickEvaluateOperator, d : LibC::Double) : Bool
  fun magickExportImagePixels = MagickExportImagePixels(wand : MagickWand*, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT, s1 : LibC::SizeT, s2 : LibC::SizeT, pc : LibC::Char*, storageType : StorageType, ptr : Void*) : Bool
  fun magickExtentImage = MagickExtentImage(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT) : Bool
  fun magickFlipImage = MagickFlipImage(wand : MagickWand*) : Bool
  fun magickFloodfillPaintImage = MagickFloodfillPaintImage(magickWand : MagickWand*, pixelWand1 : PixelWand*, double : LibC::Double, pixelWand2 : PixelWand*, sSizeT1 : LibC::SSizeT, sSizeT2 : LibC::SSizeT, bool : Bool) : Bool
  fun magickFlopImage = MagickFlopImage(wand : MagickWand*) : Bool
  fun magickForwardFourierTransformImage = MagickForwardFourierTransformImage(wand : MagickWand*, b : Bool) : Bool
  fun magickFrameImage = MagickFrameImage(magickWand : MagickWand*, pixelWand : PixelWand*, sizeT1 : LibC::SizeT, sizeT2 : LibC::SizeT, sSizeT1 : LibC::SSizeT, sSizeT2 : LibC::SSizeT, compositeOperator : CompositeOperator) : Bool
  fun magickFunctionImage = MagickFunctionImage(wand : MagickWand*, magickFunction : MagickFunction, s : LibC::SizeT, dp : LibC::Double*) : Bool
  fun magickGammaImage = MagickGammaImage(wand : MagickWand*, d : LibC::Double) : Bool
  fun magickGaussianBlurImage = MagickGaussianBlurImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickGetImageAlphaChannel = MagickGetImageAlphaChannel(magickWand : MagickWand*) : Bool
  fun magickGetImageBackgroundColor = MagickGetImageBackgroundColor(wand : MagickWand*, pixelWand : PixelWand*) : Bool
  fun magickGetImageBluePrimary = MagickGetImageBluePrimary(magickWand : MagickWand*, double1 : LibC::Double*, double2 : LibC::Double*, double3 : LibC::Double*) : Bool
  fun magickGetImageBorderColor = MagickGetImageBorderColor(wand : MagickWand*, pixelWand : PixelWand*) : Bool
  fun magickGetImageColormapColor = MagickGetImageColormapColor(wand : MagickWand*, s : LibC::SizeT, pixelWand : PixelWand*) : Bool
  fun magickGetImageDistortion = MagickGetImageDistortion(wand1 : MagickWand*, wand2 : MagickWand*, metricType : MetricType, dp : LibC::Double*) : Bool
  fun magickGetImageGreenPrimary = MagickGetImageGreenPrimary(magickWand : MagickWand*, double1 : LibC::Double*, double2 : LibC::Double*, double3 : LibC::Double*) : Bool
  fun magickGetImageKurtosis = MagickGetImageKurtosis(magickWand : MagickWand*, double1 : LibC::Double*, double2 : LibC::Double*) : Bool
  fun magickGetImageLength = MagickGetImageLength(wand : MagickWand*, magickSizeType : MagickSizeType*) : Bool
  fun magickGetImageMatteColor = MagickGetImageMatteColor(wand : MagickWand*, pixelWand : PixelWand*) : Bool
  fun magickGetImageMean = MagickGetImageMean(magickWand : MagickWand*, double1 : LibC::Double*, double2 : LibC::Double*) : Bool
  fun magickGetImagePage = MagickGetImagePage(wand : MagickWand*, sp1 : LibC::SizeT*, sp2 : LibC::SizeT*, ssp1 : LibC::SSizeT*, ssp2 : LibC::SSizeT*) : Bool
  fun magickGetImagePixelColor = MagickGetImagePixelColor(wand : MagickWand*, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT, pixelWand : PixelWand*) : Bool
  fun magickGetImageRange = MagickGetImageRange(wand : MagickWand*, dp1 : LibC::Double*, dp2 : LibC::Double*) : Bool
  fun magickGetImageRedPrimary = MagickGetImageRedPrimary(magickWand : MagickWand*, double1 : LibC::Double*, double2 : LibC::Double*, double3 : LibC::Double*) : Bool
  fun magickGetImageResolution = MagickGetImageResolution(wand : MagickWand*, dp1 : LibC::Double*, dp2 : LibC::Double*) : Bool
  fun magickGetImageWhitePoint = MagickGetImageWhitePoint(magickWand : MagickWand*, double1 : LibC::Double*, double2 : LibC::Double*, double3 : LibC::Double*) : Bool
  fun magickHaldClutImage = MagickHaldClutImage(wand1 : MagickWand*, wand2 : MagickWand*) : Bool
  fun magickHasNextImage = MagickHasNextImage(wand : MagickWand*) : Bool
  fun magickHasPreviousImage = MagickHasPreviousImage(wand : MagickWand*) : Bool
  fun magickHoughLineImage = MagickHoughLineImage(magickWand : MagickWand*, sizeT1 : LibC::SizeT, sizeT2 : LibC::SizeT, sizeT3 : LibC::SizeT) : Bool
  fun magickImplodeImage = MagickImplodeImage(magickWand : MagickWand*, double : LibC::Double, pixelInterpolateMethod : PixelInterpolateMethod) : Bool
  fun magickImportImagePixels = MagickImportImagePixels(wand : MagickWand*, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT, s1 : LibC::SizeT, s2 : LibC::SizeT, pc : LibC::Char*, storageType : StorageType, ptr : Void*) : Bool
  fun magickInterpolativeResizeImage = MagickInterpolativeResizeImage(magickWand : MagickWand*, sizeT1 : LibC::SizeT, sizeT2 : LibC::SizeT, pixelInterpolateMethod : PixelInterpolateMethod) : Bool
  fun magickInverseFourierTransformImage = MagickInverseFourierTransformImage(wand1 : MagickWand*, wand2 : MagickWand*, b : Bool) : Bool
  fun magickKuwaharaImage = MagickKuwaharaImage(magickWand : MagickWand*, double1 : LibC::Double, double2 : LibC::Double) : Bool
  fun magickLabelImage = MagickLabelImage(wand : MagickWand*, pc : LibC::Char*) : Bool
  fun magickLevelImage = MagickLevelImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double) : Bool
  fun magickLevelImageColors = MagickLevelImageColors(magickWand : MagickWand*, pixelWand1 : PixelWand*, pixelWand2 : PixelWand*, bool : Bool) : Bool
  fun magickLevelizeImage = MagickLevelizeImage(magickWand : MagickWand*, double1 : LibC::Double, double2 : LibC::Double, double3 : LibC::Double) : Bool
  fun magickLinearStretchImage = MagickLinearStretchImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickLiquidRescaleImage = MagickLiquidRescaleImage(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickLocalContrastImage = MagickLocalContrastImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickMagnifyImage = MagickMagnifyImage(wand : MagickWand*) : Bool
  fun magickMeanShiftImage = MagickMeanShiftImage(magickWand : MagickWand*, sizeT1 : LibC::SizeT, sizeT2 : LibC::SizeT, double : LibC::Double) : Bool
  fun magickMedianConvolveImage = MagickMedianConvolveImage(magickWand : MagickWand*, double : LibC::Double) : Bool
  fun magickMinifyImage = MagickMinifyImage(wand : MagickWand*) : Bool
  fun magickModeImage = MagickModeImage(wand : MagickWand*, d : LibC::Double) : Bool
  fun magickModulateImage = MagickModulateImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double) : Bool
  fun magickMorphologyImage = MagickMorphologyImage(wand : MagickWand*, morphologyMethod : MorphologyMethod, ss : LibC::SSizeT, kernelInfo : KernelInfo*) : Bool
  fun magickMotionBlurImage = MagickMotionBlurImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double) : Bool
  fun magickNegateImage = MagickNegateImage(wand : MagickWand*, b : Bool) : Bool
  fun magickNewImage = MagickNewImage(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, pixelWand : PixelWand*) : Bool
  fun magickNextImage = MagickNextImage(wand : MagickWand*) : Bool
  fun magickNormalizeImage = MagickNormalizeImage(wand : MagickWand*) : Bool
  fun magickOilPaintImage = MagickOilPaintImage(magickWand : MagickWand*, double1 : LibC::Double, double2 : LibC::Double) : Bool
  fun magickOpaquePaintImage = MagickOpaquePaintImage(wand : MagickWand*, pixelWand1 : PixelWand*, pixelWand2 : PixelWand*, d1 : LibC::Double, b : Bool) : Bool
  fun magickOptimizeImageTransparency = MagickOptimizeImageTransparency(wand : MagickWand*) : Bool
  fun magickOrderedDitherImage = MagickOrderedDitherImage(magickWand : MagickWand*, char : LibC::Char*) : Bool
  fun magickPingImage = MagickPingImage(wand : MagickWand*, pc : LibC::Char*) : Bool
  fun magickPingImageBlob = MagickPingImageBlob(wand : MagickWand*, ptr : Void*, s : LibC::SizeT) : Bool
  fun magickPingImageFile = MagickPingImageFile(wand : MagickWand*, file : LibStd::File*) : Bool
  fun magickPolaroidImage = MagickPolaroidImage(magickWand : MagickWand*, drawingWand : DrawingWand*, char : LibC::Char*, double : LibC::Double, pixelInterpolateMethod : PixelInterpolateMethod) : Bool
  fun magickPolynomialImage = MagickPolynomialImage(magickWand : MagickWand*, sizeT : LibC::SizeT, double : LibC::Double*) : Bool
  fun magickPosterizeImage = MagickPosterizeImage(magickWand : MagickWand*, sizeT : LibC::SizeT, ditherMethod : DitherMethod) : Bool
  fun magickPreviousImage = MagickPreviousImage(wand : MagickWand*) : Bool
  fun magickQuantizeImage = MagickQuantizeImage(magickWand : MagickWand*, sizeT1 : LibC::SizeT, colorspaceType : ColorspaceType, sizeT2 : LibC::SizeT, ditherMethod : DitherMethod, bool : Bool) : Bool
  fun magickQuantizeImages = MagickQuantizeImages(magickWand : MagickWand*, sizeT1 : LibC::SizeT, colorspaceType : ColorspaceType, sizeT2 : LibC::SizeT, ditherMethod : DitherMethod, bool : Bool) : Bool
  fun magickRaiseImage = MagickRaiseImage(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT, b : Bool) : Bool
  fun magickRandomThresholdImage = MagickRandomThresholdImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickRangeThresholdImage = MagickRangeThresholdImage(magickWand : MagickWand*, double1 : LibC::Double, double2 : LibC::Double, double3 : LibC::Double, double4 : LibC::Double) : Bool
  fun magickReadImage = MagickReadImage(wand : MagickWand*, pc : LibC::Char*) : Bool
  fun magickReadImageBlob = MagickReadImageBlob(wand : MagickWand*, ptr : Void*, s : LibC::SizeT) : Bool
  fun magickReadImageFile = MagickReadImageFile(wand : MagickWand*, file : LibStd::File*) : Bool
  fun magickReduceNoiseImage = MagickReduceNoiseImage(wand : MagickWand*, d : LibC::Double) : Bool
  fun magickRemapImage = MagickRemapImage(wand1 : MagickWand*, wand2 : MagickWand*, ditherMethod : DitherMethod) : Bool
  fun magickRemoveImage = MagickRemoveImage(wand : MagickWand*) : Bool
  fun magickResampleImage = MagickResampleImage(magickWand : MagickWand*, double1 : LibC::Double, double2 : LibC::Double, filterType : FilterType) : Bool
  fun magickResetImagePage = MagickResetImagePage(wand : MagickWand*, pc : LibC::Char*) : Bool
  fun magickResizeImage = MagickResizeImage(magickWand : MagickWand*, sizeT1 : LibC::SizeT, sizeT2 : LibC::SizeT, filterType : FilterType) : Bool
  fun magickRollImage = MagickRollImage(wand : MagickWand*, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT) : Bool
  fun magickRotateImage = MagickRotateImage(wand : MagickWand*, pixelWand : PixelWand*, d : LibC::Double) : Bool
  fun magickRotationalBlurImage = MagickRotationalBlurImage(wand : MagickWand*, d : LibC::Double) : Bool
  fun magickSampleImage = MagickSampleImage(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT) : Bool
  fun magickScaleImage = MagickScaleImage(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT) : Bool
  fun magickSegmentImage = MagickSegmentImage(wand : MagickWand*, colorspaceType : ColorspaceType, b : Bool, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickSelectiveBlurImage = MagickSelectiveBlurImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double) : Bool
  fun magickSeparateImage = MagickSeparateImage(magickWand : MagickWand*, channelType : ChannelType) : Bool
  fun magickSepiaToneImage = MagickSepiaToneImage(wand : MagickWand*, d : LibC::Double) : Bool
  fun magickSetImage = MagickSetImage(wand1 : MagickWand*, wand2 : MagickWand*) : Bool
  fun magickSetImageAlpha = MagickSetImageAlpha(magickWand : MagickWand*, double : LibC::Double) : Bool
  fun magickSetImageAlphaChannel = MagickSetImageAlphaChannel(magickWand : MagickWand*, alphaChannelOption : AlphaChannelOption) : Bool
  fun magickSetImageBackgroundColor = MagickSetImageBackgroundColor(wand : MagickWand*, pixelWand : PixelWand*) : Bool
  fun magickSetImageBluePrimary = MagickSetImageBluePrimary(magickWand : MagickWand*, double1 : LibC::Double, double2 : LibC::Double, double3 : LibC::Double) : Bool
  fun magickSetImageBorderColor = MagickSetImageBorderColor(wand : MagickWand*, pixelWand : PixelWand*) : Bool
  fun magickSetImageColor = MagickSetImageColor(wand : MagickWand*, pixelWand : PixelWand*) : Bool
  fun magickSetImageColormapColor = MagickSetImageColormapColor(wand : MagickWand*, s : LibC::SizeT, pixelWand : PixelWand*) : Bool
  fun magickSetImageColorspace = MagickSetImageColorspace(wand : MagickWand*, colorspaceType : ColorspaceType) : Bool
  fun magickSetImageCompose = MagickSetImageCompose(wand : MagickWand*, compositeOperator : CompositeOperator) : Bool
  fun magickSetImageCompression = MagickSetImageCompression(wand : MagickWand*, compressionType : CompressionType) : Bool
  fun magickSetImageDelay = MagickSetImageDelay(wand : MagickWand*, s : LibC::SizeT) : Bool
  fun magickSetImageDepth = MagickSetImageDepth(wand : MagickWand*, s : LibC::SizeT) : Bool
  fun magickSetImageDispose = MagickSetImageDispose(wand : MagickWand*, disposeType : DisposeType) : Bool
  fun magickSetImageCompressionQuality = MagickSetImageCompressionQuality(wand : MagickWand*, s : LibC::SizeT) : Bool
  fun magickSetImageEndian = MagickSetImageEndian(wand : MagickWand*, endianType : EndianType) : Bool
  fun magickSetImageExtent = MagickSetImageExtent(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT) : Bool
  fun magickSetImageFilename = MagickSetImageFilename(wand : MagickWand*, pc : LibC::Char*) : Bool
  fun magickSetImageFormat = MagickSetImageFormat(wand : MagickWand*, pc : LibC::Char*) : Bool
  fun magickSetImageFuzz = MagickSetImageFuzz(wand : MagickWand*, d : LibC::Double) : Bool
  fun magickSetImageGamma = MagickSetImageGamma(wand : MagickWand*, d : LibC::Double) : Bool
  fun magickSetImageGravity = MagickSetImageGravity(wand : MagickWand*, gravityType : GravityType) : Bool
  fun magickSetImageGreenPrimary = MagickSetImageGreenPrimary(magickWand : MagickWand*, double1 : LibC::Double, double2 : LibC::Double, double3 : LibC::Double) : Bool
  fun magickSetImageInterlaceScheme = MagickSetImageInterlaceScheme(wand : MagickWand*, interlaceType : InterlaceType) : Bool
  fun magickSetImageInterpolateMethod = MagickSetImageInterpolateMethod(magickWand : MagickWand*, pixelInterpolateMethod : PixelInterpolateMethod) : Bool
  fun magickSetImageIterations = MagickSetImageIterations(wand : MagickWand*, s : LibC::SizeT) : Bool
  fun magickSetImageMatte = MagickSetImageMatte(wand : MagickWand*, b : Bool) : Bool
  fun magickSetImageMatteColor = MagickSetImageMatteColor(wand : MagickWand*, pixelWand : PixelWand*) : Bool
  fun magickSetImageOrientation = MagickSetImageOrientation(wand : MagickWand*, orientationType : OrientationType) : Bool
  fun magickSetImagePage = MagickSetImagePage(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT) : Bool
  fun magickSetImagePixelColor = MagickSetImagePixelColor(magickWand : MagickWand*, sSizeT1 : LibC::SSizeT, sSizeT2 : LibC::SSizeT, pixelWand : PixelWand*) : Bool
  fun magickSetImageRedPrimary = MagickSetImageRedPrimary(magickWand : MagickWand*, double1 : LibC::Double, double2 : LibC::Double, double3 : LibC::Double) : Bool
  fun magickSetImageRenderingIntent = MagickSetImageRenderingIntent(wand : MagickWand*, renderingIntent : RenderingIntent) : Bool
  fun magickSetImageResolution = MagickSetImageResolution(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickSetImageScene = MagickSetImageScene(wand : MagickWand*, s : LibC::SizeT) : Bool
  fun magickSetImageTicksPerSecond = MagickSetImageTicksPerSecond(wand : MagickWand*, ss : LibC::SSizeT) : Bool
  fun magickSetImageType = MagickSetImageType(wand : MagickWand*, imageType : ImageType) : Bool
  fun magickSetImageUnits = MagickSetImageUnits(wand : MagickWand*, resolutionType : ResolutionType) : Bool
  fun magickSetImageWhitePoint = MagickSetImageWhitePoint(magickWand : MagickWand*, double1 : LibC::Double, double2 : LibC::Double, double3 : LibC::Double) : Bool
  fun magickShadeImage = MagickShadeImage(wand : MagickWand*, b : Bool, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickShadowImage = MagickShadowImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT) : Bool
  fun magickSharpenImage = MagickSharpenImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickShaveImage = MagickShaveImage(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT) : Bool
  fun magickShearImage = MagickShearImage(wand : MagickWand*, pixelWand : PixelWand*, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickSigmoidalContrastImage = MagickSigmoidalContrastImage(wand : MagickWand*, b : Bool, d1 : LibC::Double, d2 : LibC::Double) : Bool
  fun magickSketchImage = MagickSketchImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double) : Bool
  fun magickSolarizeImage = MagickSolarizeImage(wand : MagickWand*, d : LibC::Double) : Bool
  fun magickSparseColorImage = MagickSparseColorImage(magickWand : MagickWand*, sparseColorMethod : SparseColorMethod, sizeT : LibC::SizeT, double : LibC::Double*) : Bool
  fun magickSpliceImage = MagickSpliceImage(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT) : Bool
  fun magickSpreadImage = MagickSpreadImage(magickWand : MagickWand*, pixelInterpolateMethod : PixelInterpolateMethod, double : LibC::Double) : Bool
  fun magickStatisticImage = MagickStatisticImage(wand : MagickWand*, statisticType : StatisticType, s1 : LibC::SizeT, s2 : LibC::SizeT) : Bool
  fun magickStripImage = MagickStripImage(wand : MagickWand*) : Bool
  fun magickSwirlImage = MagickSwirlImage(magickWand : MagickWand*, double : LibC::Double, pixelInterpolateMethod : PixelInterpolateMethod) : Bool
  fun magickTintImage = MagickTintImage(wand : MagickWand*, pixelWand1 : PixelWand*, pixelWand2 : PixelWand*) : Bool
  fun magickTransformImageColorspace = MagickTransformImageColorspace(wand : MagickWand*, colorspaceType : ColorspaceType) : Bool
  fun magickTransparentPaintImage = MagickTransparentPaintImage(wand : MagickWand*, pixelWand : PixelWand*, d1 : LibC::Double, d2 : LibC::Double, invert : Bool) : Bool
  fun magickTransposeImage = MagickTransposeImage(wand : MagickWand*) : Bool
  fun magickTransverseImage = MagickTransverseImage(wand : MagickWand*) : Bool
  fun magickThresholdImage = MagickThresholdImage(wand : MagickWand*, d : LibC::Double) : Bool
  fun magickThresholdImageChannel = MagickThresholdImageChannel(magickWand : MagickWand*, channelType : ChannelType, double : LibC::Double) : Bool
  fun magickThumbnailImage = MagickThumbnailImage(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT) : Bool
  fun magickTrimImage = MagickTrimImage(wand : MagickWand*, d : LibC::Double) : Bool
  fun magickUniqueImageColors = MagickUniqueImageColors(wand : MagickWand*) : Bool
  fun magickUnsharpMaskImage = MagickUnsharpMaskImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double) : Bool
  fun magickVignetteImage = MagickVignetteImage(wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT) : Bool
  fun magickWaveImage = MagickWaveImage(magickWand : MagickWand*, double1 : LibC::Double, double2 : LibC::Double, pixelInterpolateMethod : PixelInterpolateMethod) : Bool
  fun magickWaveletDenoiseImage = MagickWaveletDenoiseImage(magickWand : MagickWand*, double1 : LibC::Double, double2 : LibC::Double) : Bool
  fun magickWhiteThresholdImage = MagickWhiteThresholdImage(wand : MagickWand*, pixelWand : PixelWand*) : Bool
  fun magickWriteImage = MagickWriteImage(wand : MagickWand*, pc : LibC::Char*) : Bool
  fun magickWriteImageFile = MagickWriteImageFile(wand : MagickWand*, file : LibStd::File*) : Bool
  fun magickWriteImages = MagickWriteImages(wand : MagickWand*, pc : LibC::Char*, b : Bool) : Bool
  fun magickWriteImagesFile = MagickWriteImagesFile(wand : MagickWand*, file : LibStd::File*) : Bool

  fun magickSetImageProgressMonitor = MagickSetImageProgressMonitor(wand : MagickWand*, magickProgressMonitor : MagickProgressMonitor, ptr : Void*) : MagickProgressMonitor

  #
  fun magickGetImageStatistics = MagickGetImageStatistics(magickWand : MagickWand*) : ChannelStatistics*

  fun magickSetImageChannelMask = MagickSetImageChannelMask(magickWand : MagickWand*, channelType : ChannelType) : ChannelType

  fun magickGetImageColorspace = MagickGetImageColorspace(wand : MagickWand*) : ColorspaceType

  fun magickGetImageCompose = MagickGetImageCompose(wand : MagickWand*) : CompositeOperator

  fun magickGetImageCompression = MagickGetImageCompression(wand : MagickWand*) : CompressionType

  fun magickGetImageDispose = MagickGetImageDispose(wand : MagickWand*) : DisposeType

  fun magickGetImageFeatures = MagickGetImageFeatures(magickWand : MagickWand*, sizeT : LibC::SizeT) : ChannelFeatures*

  fun magickGetImageEndian = MagickGetImageEndian(wand : MagickWand*) : EndianType

  fun magickGetImageGravity = MagickGetImageGravity(wand : MagickWand*) : GravityType

  fun magickDestroyImage = MagickDestroyImage(image : Image*) : Image*
  fun getImageFromMagickWand = GetImageFromMagickWand(wand : MagickWand*) : Image*

  fun magickGetImageType = MagickGetImageType(wand : MagickWand*) : ImageType
  fun magickIdentifyImageType = MagickIdentifyImageType(magickWand : MagickWand*) : ImageType

  fun magickGetImageInterlaceScheme = MagickGetImageInterlaceScheme(wand : MagickWand*) : InterlaceType

  fun magickGetImageInterpolateMethod = MagickGetImageInterpolateMethod(magickWand : MagickWand*) : PixelInterpolateMethod

  # MagickWand functions
  fun magickAppendImages = MagickAppendImages(wand : MagickWand*, b : Bool) : MagickWand*
  fun magickChannelFxImage = MagickChannelFxImage(magickWand : MagickWand*, char : LibC::Char*) : MagickWand*
  fun magickCoalesceImages = MagickCoalesceImages(wand : MagickWand*) : MagickWand*
  fun magickCombineImages = MagickCombineImages(magickWand : MagickWand*, colorspaceType : ColorspaceType) : MagickWand*
  fun magickCompareImages = MagickCompareImages(wand1 : MagickWand*, wand2 : MagickWand*, metricType : MetricType, dp : LibC::Double*) : MagickWand*
  fun magickCompareImagesLayers = MagickCompareImagesLayers(magickWand : MagickWand*, layerMethod : LayerMethod) : MagickWand*
  fun magickComplexImages = MagickComplexImages(magickWand : MagickWand*, complexOperator : ComplexOperator) : MagickWand*
  fun magickDeconstructImages = MagickDeconstructImages(wand : MagickWand*) : MagickWand*
  fun magickEvaluateImages = MagickEvaluateImages(wand : MagickWand*, magickEvaluateOperator : MagickEvaluateOperator) : MagickWand*
  fun magickFxImage = MagickFxImage(wand : MagickWand*, cp : LibC::Char*) : MagickWand*
  fun magickGetImage = MagickGetImage(wand : MagickWand*) : MagickWand*
  fun magickGetImageMask = MagickGetImageMask(magickWand : MagickWand*, pixelMask : PixelMask) : MagickWand*
  fun magickGetImageRegion = MagickGetImageRegion(wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT) : MagickWand*
  fun magickMergeImageLayers = MagickMergeImageLayers(magickWand : MagickWand*, layerMethod : LayerMethod) : MagickWand*
  fun magickMorphImages = MagickMorphImages(wand : MagickWand*, s : LibC::SizeT) : MagickWand*
  fun magickMontageImage = MagickMontageImage(wand : MagickWand*, drawingWand : DrawingWand*, cp1 : LibC::Char*, cp2 : LibC::Char*, montageMode : MontageMode, cp3 : LibC::Char*) : MagickWand*
  fun magickOptimizeImageLayers = MagickOptimizeImageLayers(wand : MagickWand*) : MagickWand*
  fun magickPreviewImages = MagickPreviewImages(wand : MagickWand*, previewType : PreviewType) : MagickWand*
  fun magickSimilarityImage = MagickSimilarityImage(magickWand1 : MagickWand*, magickWand2 : MagickWand*, metricType : MetricType, double1 : LibC::Double, rectangleInfo : RectangleInfo*, double2 : LibC::Double*) : MagickWand*
  fun magickSmushImages = MagickSmushImages(wand : MagickWand*, b : Bool, ss : LibC::SSizeT) : MagickWand*
  fun magickSteganoImage = MagickSteganoImage(wand1 : MagickWand*, wand2 : MagickWand*, ss : LibC::SSizeT) : MagickWand*
  fun magickStereoImage = MagickStereoImage(wand1 : MagickWand*, wand2 : MagickWand*) : MagickWand*
  fun magickTextureImage = MagickTextureImage(wand1 : MagickWand*, wand2 : MagickWand*) : MagickWand*

  fun magickGetImageOrientation = MagickGetImageOrientation(wand : MagickWand*) : OrientationType

  fun magickGetImageHistogram = MagickGetImageHistogram(wand : MagickWand*, sp : LibC::SizeT*) : PixelWand**

  fun magickGetImageRenderingIntent = MagickGetImageRenderingIntent(wand : MagickWand*) : RenderingIntent

  fun magickGetImageUnits = MagickGetImageUnits(wand : MagickWand*) : ResolutionType

  # size_t functions
  fun magickGetImageColors = MagickGetImageColors(wand : MagickWand*) : LibC::SizeT
  fun magickGetImageCompressionQuality = MagickGetImageCompressionQuality(wand : MagickWand*) : LibC::SizeT
  fun magickGetImageDelay = MagickGetImageDelay(wand : MagickWand*) : LibC::SizeT
  fun magickGetImageDepth = MagickGetImageDepth(wand : MagickWand*) : LibC::SizeT
  fun magickGetImageHeight = MagickGetImageHeight(wand : MagickWand*) : LibC::SizeT
  fun magickGetImageIterations = MagickGetImageIterations(wand : MagickWand*) : LibC::SizeT
  fun magickGetImageScene = MagickGetImageScene(wand : MagickWand*) : LibC::SizeT
  fun magickGetImageTicksPerSecond = MagickGetImageTicksPerSecond(wand : MagickWand*) : LibC::SizeT
  fun magickGetImageWidth = MagickGetImageWidth(wand : MagickWand*) : LibC::SizeT
  fun magickGetNumberImages = MagickGetNumberImages(wand : MagickWand*) : LibC::SizeT

  # unsigned char* functions
  fun magickGetImageBlob = MagickGetImageBlob(wand : MagickWand*, sp : LibC::SizeT*) : LibC::UChar*
  fun magickGetImagesBlob = MagickGetImagesBlob(wand : MagickWand*, sp : LibC::SizeT*) : LibC::UChar*

  fun magickGetImageVirtualPixelMethod = MagickGetImageVirtualPixelMethod(wand : MagickWand*) : VirtualPixelMethod
  fun magickSetImageVirtualPixelMethod = MagickSetImageVirtualPixelMethod(wand : MagickWand*, virtualPixelMethod : VirtualPixelMethod) : VirtualPixelMethod
end
