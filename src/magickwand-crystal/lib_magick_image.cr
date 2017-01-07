require "./types"

lib LibMagick
  # --- magick-image ----------------------------------------------------------#
  fun magickGetImageChannelFeatures
    = MagickGetImageChannelFeatures( wand : MagickWand*, s : LibC::SizeT ): ChannelFeatures*
  fun magickGetImageChannelStatistics
    = MagickGetImageChannelStatistics( wand : MagickWand* ): ChannelStatistics*

  # char* functions
  fun magickGetImageFilename
    = MagickGetImageFilename( wand : MagickWand* ): LibC::Char*
  fun magickGetImageFormat
    = MagickGetImageFormat( wand : MagickWand* ): LibC::Char*
  fun magickGetImageSignature
    = MagickGetImageSignature( wand : MagickWand* ): LibC::Char*
  fun magickIdentifyImage
    = MagickIdentifyImage( wand : MagickWand* ): LibC::Char*

  fun magickGetImageColorspace
    = MagickGetImageColorspace( wand : MagickWand* ): ColorspaceType
  fun magickGetImageCompose
    = MagickGetImageCompose( wand : MagickWand* ): CompositeOperator
  fun magickGetImageCompression
    = MagickGetImageCompression( wand : MagickWand* ): CompressionType
  fun magickGetImageDispose
    = MagickGetImageDispose( wand : MagickWand* ): DisposeType

  # double functions
  fun magickGetImageChannelDistortions
    = MagickGetImageChannelDistortions( wand1 : MagickWand*, wand2 : MagickWand*, metricType : MetricType ): LibC::Double*
  fun magickGetImageFuzz
    = MagickGetImageFuzz( wand : MagickWand* ): LibC::Double
  fun magickGetImageGamma
    = MagickGetImageGamma( wand : MagickWand* ): LibC::Double
  fun magickGetImageTotalInkDensity
    = MagickGetImageTotalInkDensity( wand : MagickWand* ): LibC::Double

  fun magickGetImageEndian
    = MagickGetImageEndian( wand : MagickWand* ): EndianType

  fun magickGetImageGravity
    = MagickGetImageGravity( wand : MagickWand* ): GravityType

  fun magickDestroyImage
    = MagickDestroyImage( image : Image* ): Image*
  fun getImageFromMagickWand
    = GetImageFromMagickWand( wand : MagickWand* ): Image*

  fun magickGetImageType
    = MagickGetImageType( wand : MagickWand* ): ImageType

  fun magickGetImageInterlaceScheme
    = MagickGetImageInterlaceScheme( wand : MagickWand* ): InterlaceType

  fun magickGetImageInterpolateMethod
    = MagickGetImageInterpolateMethod( wand : MagickWand* ): InterpolatePixelMethod

  # Bool functions
  fun magickAdaptiveBlurImage
    = MagickAdaptiveBlurImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickAdaptiveBlurImageChannel
    = MagickAdaptiveBlurImageChannel( wand : MagickWand*, channelType : ChannelType, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickAdaptiveResizeImage
    = MagickAdaptiveResizeImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT ): Bool
  fun magickAdaptiveSharpenImage
    = MagickAdaptiveSharpenImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickAdaptiveSharpenImageChannel
    = MagickAdaptiveSharpenImageChannel( wand : MagickWand*, channelType : ChannelType, d1 : LibC::Double,  d2 : LibC::Double ): Bool
  fun magickAdaptiveThresholdImage
    = MagickAdaptiveThresholdImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss : LibC::SSizeT ): Bool
  fun magickAddImage
    = MagickAddImage( wand1 : MagickWand*, wand2 : MagickWand* ): Bool
  fun magickAddNoiseImage
    = MagickAddNoiseImage( wand : MagickWand*, noiseType : NoiseType ): Bool
  fun magickAddNoiseImageChannel
    = MagickAddNoiseImageChannel( wand : MagickWand*, channelType : ChannelType, noiseType : NoiseType ): Bool
  fun magickAffineTransformImage
    = MagickAffineTransformImage( wand : MagickWand*, drawingWand : DrawingWand* ): Bool
  fun magickAnnotateImage
    = MagickAnnotateImage( wand : MagickWand*, drawingWand : DrawingWand*, d1 : LibC::Double,  d2 : LibC::Double, d3 : LibC::Double, pc : LibC::Char* ): Bool
  fun magickAnimateImages
    = MagickAnimateImages( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickAutoGammaImage
    = MagickAutoGammaImage( wand : MagickWand* ): Bool
  fun magickAutoGammaImageChannel
    = MagickAutoGammaImageChannel( wand : MagickWand*, channelType : ChannelType ): Bool
  fun magickAutoLevelImage
    = MagickAutoLevelImage( wand : MagickWand* ): Bool
  fun magickAutoLevelImageChannel
    = MagickAutoLevelImageChannel( wand : MagickWand*, channelType : ChannelType ): Bool
  fun magickAutoOrientImage
    = MagickAutoOrientImage( wand : MagickWand* ): Bool
  fun magickBlackThresholdImage
    = MagickBlackThresholdImage( wand : MagickWand*, pixelWand : PixelWand* ): Bool
  fun magickBlueShiftImage
    = MagickBlueShiftImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickBlurImage
    = MagickBlurImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickBlurImageChannel
    = MagickBlurImageChannel( wand : MagickWand*, channelType : ChannelType, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickBorderImage
    = MagickBorderImage( wand : MagickWand*, pixelWand : PixelWand*, s1 : LibC::SizeT, s2 : LibC::SizeT ): Bool
  fun magickBrightnessContrastImage
    = MagickBrightnessContrastImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickBrightnessContrastImageChannel
    = MagickBrightnessContrastImageChannel( wand : MagickWand*, channelType : ChannelType, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickCharcoalImage
    = MagickCharcoalImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickChopImage
    = MagickChopImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT ): Bool
  fun magickClampImage
    = MagickClampImage( wand : MagickWand* ): Bool
  fun magickClampImageChannel
    = MagickClampImageChannel( wand : MagickWand*, channelType : ChannelType ): Bool
  fun magickClipImage
    = MagickClipImage( wand : MagickWand* ): Bool
  fun magickClipImagePath
    = MagickClipImagePath( wand : MagickWand*, pc : LibC::Char*, b : Bool ): Bool
  fun magickClutImage
    = MagickClutImage( wand1 : MagickWand*, wand2 : MagickWand* ): Bool
  fun magickClutImageChannel
    = MagickClutImageChannel( wand1 : MagickWand*, channelType : ChannelType, wand2 : MagickWand* ): Bool
  fun magickColorDecisionListImage
    = MagickColorDecisionListImage( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickColorizeImage
    = MagickColorizeImage( wand : MagickWand*, pixelWand1 : PixelWand*, pixelWand2 : PixelWand* ): Bool
  fun magickColorMatrixImage
    = MagickColorMatrixImage( wand : MagickWand*, kernelInfo : KernelInfo* ): Bool
  fun magickCommentImage
    = MagickCommentImage( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickCompositeImage
    = MagickCompositeImage( wand1 : MagickWand*, wand2 : MagickWand*, compositeOperator : CompositeOperator,  ss1 : LibC::SSizeT, ss2 : LibC::SSizeT ): Bool
  fun magickCompositeImageChannel
    = MagickCompositeImageChannel( wand1 : MagickWand*, channelType : ChannelType, wand2 : MagickWand*, compositeOperator : CompositeOperator, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT ): Bool
  fun magickCompositeImageGravity
    = MagickCompositeImageGravity( wand1 : MagickWand*, wand2 : MagickWand*, compositeOperator : CompositeOperator, gravityType : GravityType ): Bool
  fun magickCompositeLayers
    = MagickCompositeLayers( wand1 : MagickWand*, wand2 : MagickWand*, compositeOperator : CompositeOperator,  ss1 : LibC::SSizeT, ss2 : LibC::SSizeT ): Bool
  fun magickConstituteImage
    = MagickConstituteImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, pc : LibC::Char*, storageType : StorageType, ptr : Void* ): Bool
  fun magickContrastImage
    = MagickContrastImage( wand : MagickWand*, b : Bool ): Bool
  fun magickContrastStretchImage
    = MagickContrastStretchImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickContrastStretchImageChannel
    = MagickContrastStretchImageChannel( wand : MagickWand*, channelType : ChannelType, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickConvolveImage
    = MagickConvolveImage( wand : MagickWand*, s : LibC::SizeT, dp : LibC::Double* ): Bool
  fun magickConvolveImageChannel
    = MagickConvolveImageChannel( wand : MagickWand*, channelType : ChannelType, s : LibC::SizeT, dp : LibC::Double* ): Bool
  fun magickCropImage
    = MagickCropImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT ): Bool
  fun magickCycleColormapImage
    = MagickCycleColormapImage( wand : MagickWand*, ss : LibC::SSizeT ): Bool
  fun magickDecipherImage
    = MagickDecipherImage( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickDeskewImage
    = MagickDeskewImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickDespeckleImage
    = MagickDespeckleImage( wand : MagickWand* ): Bool
  fun magickDisplayImage
    = MagickDisplayImage( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickDisplayImages
    = MagickDisplayImages( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickDistortImage
    = MagickDistortImage( wand : MagickWand*, distortImageMethod : DistortImageMethod, s : LibC::SizeT, dp : LibC::Double*, b : Bool ): Bool
  fun magickDrawImage
    = MagickDrawImage( wand : MagickWand*, drawingWand : DrawingWand* ): Bool
  fun magickEdgeImage
    = MagickEdgeImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickEmbossImage
    = MagickEmbossImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickEncipherImage
    = MagickEncipherImage( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickEnhanceImage
    = MagickEnhanceImage( wand : MagickWand* ): Bool
  fun magickEqualizeImage
    = MagickEqualizeImage( wand : MagickWand* ): Bool
  fun magickEqualizeImageChannel
    = MagickEqualizeImageChannel( wand : MagickWand*, channelType : ChannelType ): Bool
  fun magickEvaluateImage
    = MagickEvaluateImage( wand : MagickWand*, magickEvaluateOperator : MagickEvaluateOperator, d : LibC::Double ): Bool
  fun magickEvaluateImageChannel
    = MagickEvaluateImageChannel( wand : MagickWand*, channelType : ChannelType, magickEvaluateOperator :  MagickEvaluateOperator, d : LibC::Double ): Bool
  fun magickExportImagePixels
    = MagickExportImagePixels( wand : MagickWand*, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT, s1 : LibC::SizeT, s2 : LibC::SizeT, pc : LibC::Char*, storageType : StorageType, ptr : Void* ): Bool
  fun magickExtentImage
    = MagickExtentImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT,  ss2 : LibC::SSizeT ): Bool
  fun magickFilterImage
    = MagickFilterImage( wand : MagickWand*, kernelInfo : KernelInfo* ): Bool
  fun magickFilterImageChannel
    = MagickFilterImageChannel( wand : MagickWand*, channelType : ChannelType, kernelInfo : KernelInfo* ): Bool
  fun magickFlipImage
    = MagickFlipImage( wand : MagickWand* ): Bool
  fun magickFloodfillPaintImage
    = MagickFloodfillPaintImage( wand : MagickWand*, channelType : ChannelType, pixelWand1 : PixelWand*, d1 : LibC::Double, pixelWand2 : PixelWand*, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT, b : Bool ): Bool
  fun magickFlopImage
    = MagickFlopImage( wand : MagickWand* ): Bool
  fun magickForwardFourierTransformImage
    = MagickForwardFourierTransformImage( wand : MagickWand*, b : Bool ): Bool
  fun magickFrameImage
    = MagickFrameImage( wand : MagickWand*, pixelWand : PixelWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT ): Bool
  fun magickFunctionImage
    = MagickFunctionImage( wand : MagickWand*, magickFunction : MagickFunction, s : LibC::SizeT, dp : LibC::Double* ): Bool
  fun magickFunctionImageChannel
    = MagickFunctionImageChannel( wand : MagickWand*, channelType : ChannelType, magickFunction : MagickFunction, s : LibC::SizeT, dp : LibC::Double* ): Bool
  fun magickGammaImage
    = MagickGammaImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickGammaImageChannel
    = MagickGammaImageChannel( wand : MagickWand*, channelType : ChannelType, d : LibC::Double ): Bool
  fun magickGaussianBlurImage
    = MagickGaussianBlurImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickGaussianBlurImageChannel
    = MagickGaussianBlurImageChannel( wand : MagickWand*, channelType : ChannelType, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickGetImageAlphaChannel
    = MagickGetImageAlphaChannel( wand : MagickWand* ): Bool
  fun magickGetImageBackgroundColor
    = MagickGetImageBackgroundColor( wand : MagickWand*, pixelWand : PixelWand* ): Bool
  fun magickGetImageBluePrimary
    = MagickGetImageBluePrimary( wand : MagickWand*, dp1 : LibC::Double*, dp2 : LibC::Double* ): Bool
  fun magickGetImageBorderColor
    = MagickGetImageBorderColor( wand : MagickWand*, pixelWand : PixelWand* ): Bool
  fun magickGetImageChannelDistortion
    = MagickGetImageChannelDistortion( wand1 : MagickWand*, wand2 : MagickWand*, channelType : ChannelType, metricType : MetricType, dp : LibC::Double* ): Bool
  fun magickGetImageChannelKurtosis
    = MagickGetImageChannelKurtosis( wand : MagickWand*, channelType : ChannelType, dp1 : LibC::Double*, dp2 : LibC::Double* ): Bool
  fun magickGetImageChannelMean
    = MagickGetImageChannelMean( wand : MagickWand*, channelType : ChannelType, dp1 : LibC::Double*, dp2 : LibC::Double* ): Bool
  fun magickGetImageChannelRange
    = MagickGetImageChannelRange( wand : MagickWand*, channelType : ChannelType, dp1 : LibC::Double*, dp2 : LibC::Double* ): Bool
  fun magickGetImageColormapColor
    = MagickGetImageColormapColor( wand : MagickWand*, s : LibC::SizeT, pixelWand : PixelWand* ): Bool
  fun magickGetImageDistortion
    = MagickGetImageDistortion( wand1 : MagickWand*, wand2 : MagickWand*, metricType : MetricType, dp : LibC::Double* ): Bool
  fun magickGetImageGreenPrimary
    = MagickGetImageGreenPrimary( wand : MagickWand*, dp1 : LibC::Double*, dp2 : LibC::Double* ): Bool
  fun magickGetImageMatteColor
    = MagickGetImageMatteColor( wand : MagickWand*, pixelWand : PixelWand* ): Bool
  fun magickGetImageLength
    = MagickGetImageLength( wand : MagickWand*, magickSizeType : MagickSizeType* ): Bool
  fun magickGetImagePage
    = MagickGetImagePage( wand : MagickWand*, sp1 : LibC::SizeT*, sp2 : LibC::SizeT*, ssp1 : LibC::SSizeT*, ssp2 : LibC::SSizeT* ): Bool
  fun magickGetImagePixelColor
    = MagickGetImagePixelColor( wand : MagickWand*, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT, pixelWand : PixelWand* ): Bool
  fun magickGetImageRange
    = MagickGetImageRange( wand : MagickWand*, dp1 : LibC::Double*, dp2 : LibC::Double* ): Bool
  fun magickGetImageRedPrimary
    = MagickGetImageRedPrimary( wand : MagickWand*, dp1 : LibC::Double*, dp2 : LibC::Double* ): Bool
  fun magickGetImageResolution
    = MagickGetImageResolution( wand : MagickWand*, dp1 : LibC::Double*, dp2 : LibC::Double* ): Bool
  fun magickGetImageWhitePoint
    = MagickGetImageWhitePoint( wand : MagickWand*, dp1 : LibC::Double*, dp2 : LibC::Double* ): Bool
  fun magickHaldClutImage
    = MagickHaldClutImage( wand1 : MagickWand*, wand2 : MagickWand* ): Bool
  fun magickHaldClutImageChannel
    = MagickHaldClutImageChannel( wand1 : MagickWand*, channelType : ChannelType, wand2 : MagickWand* ): Bool
  fun magickHasNextImage
    = MagickHasNextImage( wand : MagickWand* ): Bool
  fun magickHasPreviousImage
    = MagickHasPreviousImage( wand : MagickWand* ): Bool
  fun magickImplodeImage
    = MagickImplodeImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickImportImagePixels
    = MagickImportImagePixels( wand : MagickWand*, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT, s1 : LibC::SizeT, s2 : LibC::SizeT, pc : LibC::Char*, storageType : StorageType, ptr : Void* ): Bool
  fun magickInverseFourierTransformImage
    = MagickInverseFourierTransformImage( wand1 : MagickWand*, wand2 : MagickWand*, b : Bool ): Bool
  fun magickLabelImage
    = MagickLabelImage( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickLevelImage
    = MagickLevelImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double ): Bool
  fun magickLevelImageChannel
    = MagickLevelImageChannel( wand : MagickWand*, channelType : ChannelType, d1 : LibC::Double,  d2 : LibC::Double, d3 : LibC::Double ): Bool
  fun magickLinearStretchImage
    = MagickLinearStretchImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickLiquidRescaleImage
    = MagickLiquidRescaleImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, d1 : LibC::Double,  d2 : LibC::Double ): Bool
  fun magickLocalContrastImage
    = MagickLocalContrastImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickMagnifyImage
    = MagickMagnifyImage( wand : MagickWand* ): Bool
  fun magickMedianFilterImage
    = MagickMedianFilterImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickMinifyImage
    = MagickMinifyImage( wand : MagickWand* ): Bool
  fun magickModeImage
    = MagickModeImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickModulateImage
    = MagickModulateImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double ): Bool
  fun magickMorphologyImage
    = MagickMorphologyImage( wand : MagickWand*, morphologyMethod : MorphologyMethod, ss : LibC::SSizeT, kernelInfo : KernelInfo* ): Bool
  fun magickMorphologyImageChannel
    = MagickMorphologyImageChannel( wand : MagickWand*, channelType : ChannelType, morphologyMethod : MorphologyMethod, ss : LibC::SSizeT, kernelInfo : KernelInfo* ): Bool
  fun magickMotionBlurImage
    = MagickMotionBlurImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double ): Bool
  fun magickMotionBlurImageChannel
    = MagickMotionBlurImageChannel( wand : MagickWand*, channelType : ChannelType, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double ): Bool
  fun magickNegateImage
    = MagickNegateImage( wand : MagickWand*, b : Bool ): Bool
  fun magickNegateImageChannel
    = MagickNegateImageChannel( wand : MagickWand*, channelType : ChannelType, b : Bool ): Bool
  fun magickNewImage
    = MagickNewImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, pixelWand : PixelWand* ): Bool
  fun magickNextImage
    = MagickNextImage( wand : MagickWand* ): Bool
  fun magickNormalizeImage
    = MagickNormalizeImage( wand : MagickWand* ): Bool
  fun magickNormalizeImageChannel
    = MagickNormalizeImageChannel( wand : MagickWand*, channelType : ChannelType ): Bool
  fun magickOilPaintImage
    = MagickOilPaintImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickOpaquePaintImage
    = MagickOpaquePaintImage( wand : MagickWand*, pixelWand1 : PixelWand*, pixelWand2 : PixelWand*, d1 : LibC::Double, b : Bool ): Bool
  fun magickOpaquePaintImageChannel
    = MagickOpaquePaintImageChannel( wand : MagickWand*, channelType : ChannelType, pixelWand1 : PixelWand*, pixelWand2 : PixelWand*, d : LibC::Double, b : Bool ): Bool
  fun magickOrderedPosterizeImage
    = MagickOrderedPosterizeImage( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickOrderedPosterizeImageChannel
    = MagickOrderedPosterizeImageChannel( wand : MagickWand*, channelType : ChannelType, pc : LibC::Char* ): Bool
  fun magickOptimizeImageTransparency
    = MagickOptimizeImageTransparency( wand : MagickWand* ): Bool
  fun magickTransparentPaintImage
    = MagickTransparentPaintImage( wand : MagickWand*, pixelWand : PixelWand*, d1 : LibC::Double, d2 : LibC::Double, invert : Bool ): Bool
  fun magickPingImage
    = MagickPingImage( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickPingImageBlob
    = MagickPingImageBlob( wand : MagickWand*, ptr : Void*, s : LibC::SizeT ): Bool
  fun magickPingImageFile
    = MagickPingImageFile( wand : MagickWand*, file : LibStd::File* ): Bool
  fun magickPolaroidImage
    = MagickPolaroidImage( wand : MagickWand*, drawingWand : DrawingWand*, d : LibC::Double ): Bool
  fun magickPosterizeImage
    = MagickPosterizeImage( wand : MagickWand*, s : LibC::SizeT, b : Bool ): Bool
  fun magickPreviousImage
    = MagickPreviousImage( wand : MagickWand* ): Bool
  fun magickQuantizeImage
    = MagickQuantizeImage( wand : MagickWand*, s1 : LibC::SizeT, colorspaceType : ColorspaceType, s2 : LibC::SizeT, b1 : Bool, b2 : Bool ): Bool
  fun magickQuantizeImages
    = MagickQuantizeImages( wand : MagickWand*, s1 : LibC::SizeT, colorspaceType : ColorspaceType, s2 : LibC::SizeT, b1 : Bool, b2 : Bool ): Bool
  fun magickRaiseImage
    = MagickRaiseImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT, b : Bool ): Bool
  fun magickRandomThresholdImage
    = MagickRandomThresholdImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickRandomThresholdImageChannel
    = MagickRandomThresholdImageChannel( wand : MagickWand*, channelType : ChannelType, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickReadImage
    = MagickReadImage( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickReadImageBlob
    = MagickReadImageBlob( wand : MagickWand*, ptr : Void*, s : LibC::SizeT ): Bool
  fun magickReadImageFile
    = MagickReadImageFile( wand : MagickWand*, file : LibStd::File* ): Bool
  fun magickReduceNoiseImage
    = MagickReduceNoiseImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickRemapImage
    = MagickRemapImage( wand1 : MagickWand*, wand2 : MagickWand*, ditherMethod : DitherMethod ): Bool
  fun magickRemoveImage
    = MagickRemoveImage( wand : MagickWand* ): Bool
  fun magickResampleImage
    = MagickResampleImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, filterTypes : FilterTypes, d3 : LibC::Double ): Bool
  fun magickResetImagePage
    = MagickResetImagePage( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickResizeImage
    = MagickResizeImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, filterTypes : FilterTypes, d : LibC::Double ): Bool
  fun magickRollImage
    = MagickRollImage( wand : MagickWand*, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT ): Bool
  fun magickRotateImage
    = MagickRotateImage( wand : MagickWand*, pixelWand : PixelWand*, d : LibC::Double ): Bool
  fun magickRotationalBlurImage
    = MagickRotationalBlurImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickRotationalBlurImageChannel
    = MagickRotationalBlurImageChannel( wand : MagickWand*, channelType : ChannelType, d : LibC::Double ): Bool
  fun magickSampleImage
    = MagickSampleImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT ): Bool
  fun magickScaleImage
    = MagickScaleImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT ): Bool
  fun magickSegmentImage
    = MagickSegmentImage( wand : MagickWand*, colorspaceType : ColorspaceType, b : Bool, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickSelectiveBlurImage
    = MagickSelectiveBlurImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double ): Bool
  fun magickSelectiveBlurImageChannel
    = MagickSelectiveBlurImageChannel( wand : MagickWand*, channelType : ChannelType, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double ): Bool
  fun magickSeparateImageChannel
    = MagickSeparateImageChannel( wand : MagickWand*, channelType : ChannelType ): Bool
  fun magickSepiaToneImage
    = MagickSepiaToneImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickSetImage
    = MagickSetImage( wand1 : MagickWand*, wand2 : MagickWand* ): Bool
  fun magickSetImageAlphaChannel
    = MagickSetImageAlphaChannel( wand : MagickWand*, alphaChannelType : AlphaChannelType ): Bool
  fun magickSetImageBackgroundColor
    = MagickSetImageBackgroundColor( wand : MagickWand*, pixelWand : PixelWand* ): Bool
  fun magickSetImageBias
    = MagickSetImageBias( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickSetImageBluePrimary
    = MagickSetImageBluePrimary( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickSetImageBorderColor
    = MagickSetImageBorderColor( wand : MagickWand*, pixelWand : PixelWand* ): Bool
  fun magickSetImageChannelDepth
    = MagickSetImageChannelDepth( wand : MagickWand*, channelType : ChannelType, s : LibC::SizeT ): Bool
  fun magickSetImageClipMask
    = MagickSetImageClipMask( wand1 : MagickWand*, wand2 : MagickWand* ): Bool
  fun magickSetImageColor
    = MagickSetImageColor( wand : MagickWand*, pixelWand : PixelWand* ): Bool
  fun magickSetImageColormapColor
    = MagickSetImageColormapColor( wand : MagickWand*, s : LibC::SizeT, pixelWand : PixelWand* ): Bool
  fun magickSetImageColorspace
    = MagickSetImageColorspace( wand : MagickWand*, colorspaceType : ColorspaceType ): Bool
  fun magickSetImageCompose
    = MagickSetImageCompose( wand : MagickWand*, compositeOperator : CompositeOperator ): Bool
  fun magickSetImageCompression
    = MagickSetImageCompression( wand : MagickWand*, compressionType : CompressionType ): Bool
  fun magickSetImageDelay
    = MagickSetImageDelay( wand : MagickWand*, s : LibC::SizeT ): Bool
  fun magickSetImageDepth
    = MagickSetImageDepth( wand : MagickWand*, s : LibC::SizeT ): Bool
  fun magickSetImageDispose
    = MagickSetImageDispose( wand : MagickWand*, disposeType : DisposeType ): Bool
  fun magickSetImageCompressionQuality
    = MagickSetImageCompressionQuality( wand : MagickWand*, s : LibC::SizeT ): Bool
  fun magickSetImageEndian
    = MagickSetImageEndian( wand : MagickWand*, endianType : EndianType ): Bool
  fun magickSetImageExtent
    = MagickSetImageExtent( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT ): Bool
  fun magickSetImageFilename
    = MagickSetImageFilename( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickSetImageFormat
    = MagickSetImageFormat( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickSetImageFuzz
    = MagickSetImageFuzz( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickSetImageGamma
    = MagickSetImageGamma( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickSetImageGravity
    = MagickSetImageGravity( wand : MagickWand*, gravityType : GravityType ): Bool
  fun magickSetImageGreenPrimary
    = MagickSetImageGreenPrimary( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickSetImageInterlaceScheme
    = MagickSetImageInterlaceScheme( wand : MagickWand*, interlaceType : InterlaceType ): Bool
  fun magickSetImageInterpolateMethod
    = MagickSetImageInterpolateMethod( wand : MagickWand*, interpolatePixelMethod : InterpolatePixelMethod ): Bool
  fun magickSetImageIterations
    = MagickSetImageIterations( wand : MagickWand*, s : LibC::SizeT  ): Bool
  fun magickSetImageMatte
    = MagickSetImageMatte( wand : MagickWand*, b : Bool ): Bool
  fun magickSetImageMatteColor
    = MagickSetImageMatteColor( wand : MagickWand*, pixelWand : PixelWand* ): Bool
  fun magickSetImageOpacity
    = MagickSetImageOpacity( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickSetImageOrientation
    = MagickSetImageOrientation( wand : MagickWand*, orientationType : OrientationType ): Bool
  fun magickSetImagePage
    = MagickSetImagePage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT ): Bool
  fun magickSetImageRedPrimary
    = MagickSetImageRedPrimary( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickSetImageRenderingIntent
    = MagickSetImageRenderingIntent( wand : MagickWand*, renderingIntent : RenderingIntent ): Bool
  fun magickSetImageResolution
    = MagickSetImageResolution( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickSetImageScene
    = MagickSetImageScene( wand : MagickWand*, s : LibC::SizeT ): Bool
  fun magickSetImageTicksPerSecond
    = MagickSetImageTicksPerSecond( wand : MagickWand*, ss : LibC::SSizeT ): Bool
  fun magickSetImageType
    = MagickSetImageType( wand : MagickWand*, imageType : ImageType ): Bool
  fun magickSetImageUnits
    = MagickSetImageUnits( wand : MagickWand*, resolutionType : ResolutionType ): Bool
  fun magickSetImageWhitePoint
    = MagickSetImageWhitePoint( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickShadeImage
    = MagickShadeImage( wand : MagickWand*, b : Bool, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickShadowImage
    = MagickShadowImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT ): Bool
  fun magickSharpenImage
    = MagickSharpenImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickSharpenImageChannel
    = MagickSharpenImageChannel( wand : MagickWand*, channelType : ChannelType, d1 : LibC::Double,  d2 : LibC::Double ): Bool
  fun magickShaveImage
    = MagickShaveImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT ): Bool
  fun magickShearImage
    = MagickShearImage( wand : MagickWand*, pixelWand : PixelWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickSigmoidalContrastImage
    = MagickSigmoidalContrastImage( wand : MagickWand*, b : Bool, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickSigmoidalContrastImageChannel
    = MagickSigmoidalContrastImageChannel( wand : MagickWand*, channelType : ChannelType, b : Bool, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickSketchImage
    = MagickSketchImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double ): Bool
  fun magickSolarizeImage
    = MagickSolarizeImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickSolarizeImageChannel
    = MagickSolarizeImageChannel( wand : MagickWand*, channelType : ChannelType, d : LibC::Double ): Bool
  fun magickSparseColorImage
    = MagickSparseColorImage( wand : MagickWand*, channelType : ChannelType, sparseColorMethod : SparseColorMethod, s : LibC::SizeT, dp : LibC::Double* ): Bool
  fun magickSpliceImage
    = MagickSpliceImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT ): Bool
  fun magickSpreadImage
    = MagickSpreadImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickStatisticImage
    = MagickStatisticImage( wand : MagickWand*, statisticType : StatisticType, s1 : LibC::SizeT, s2 : LibC::SizeT ): Bool
  fun magickStatisticImageChannel
    = MagickStatisticImageChannel( wand : MagickWand*, channelType : ChannelType, statisticType : StatisticType, s1 : LibC::SizeT, s2 : LibC::SizeT ): Bool
  fun magickStripImage
    = MagickStripImage( wand : MagickWand* ): Bool
  fun magickSwirlImage
    = MagickSwirlImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickTintImage
    = MagickTintImage( wand : MagickWand*, pixelWand1 : PixelWand*, pixelWand2 : PixelWand* ): Bool
  fun magickTransformImageColorspace
    = MagickTransformImageColorspace( wand : MagickWand*, colorspaceType : ColorspaceType ): Bool
  fun magickTransposeImage
    = MagickTransposeImage( wand : MagickWand* ): Bool
  fun magickTransverseImage
    = MagickTransverseImage( wand : MagickWand* ): Bool
  fun magickThresholdImage
    = MagickThresholdImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickThresholdImageChannel
    = MagickThresholdImageChannel( wand : MagickWand*, channelType : ChannelType, d : LibC::Double ): Bool
  fun magickThumbnailImage
    = MagickThumbnailImage( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT ): Bool
  fun magickTrimImage
    = MagickTrimImage( wand : MagickWand*, d : LibC::Double ): Bool
  fun magickUniqueImageColors
    = MagickUniqueImageColors( wand : MagickWand* ): Bool
  fun magickUnsharpMaskImage
    = MagickUnsharpMaskImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double ): Bool
  fun magickUnsharpMaskImageChannel
    = MagickUnsharpMaskImageChannel( wand : MagickWand*, channelType : ChannelType, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double ): Bool
  fun magickVignetteImage
    = MagickVignetteImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT ): Bool
  fun magickWaveImage
    = MagickWaveImage( wand : MagickWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun magickWhiteThresholdImage
    = MagickWhiteThresholdImage( wand : MagickWand*, pixelWand : PixelWand* ): Bool
  fun magickWriteImage
    = MagickWriteImage( wand : MagickWand*, pc : LibC::Char* ): Bool
  fun magickWriteImageFile
    = MagickWriteImageFile( wand : MagickWand*, file : LibStd::File* ): Bool
  fun magickWriteImages
    = MagickWriteImages( wand : MagickWand*, pc : LibC::Char*, b : Bool ): Bool
  fun magickWriteImagesFile
    = MagickWriteImagesFile( wand : MagickWand*, file : LibStd::File* ): Bool

  fun magickSetImageProgressMonitor
    = MagickSetImageProgressMonitor( wand : MagickWand*, magickProgressMonitor : MagickProgressMonitor, ptr : Void* ): MagickProgressMonitor

  # MagickWand functions
  fun magickAppendImages
    = MagickAppendImages( wand : MagickWand*, b : Bool ): MagickWand*
  fun magickCoalesceImages
    = MagickCoalesceImages( wand : MagickWand* ): MagickWand*
  fun magickCombineImages
    = MagickCombineImages( wand : MagickWand*, channelType : ChannelType ): MagickWand*
  fun magickCompareImageChannels
    = MagickCompareImageChannels( wand1 : MagickWand*, wand2 : MagickWand*, channelType : ChannelType, metricType : MetricType, dp : LibC::Double* ): MagickWand*
  fun magickCompareImages
    = MagickCompareImages( wand1 : MagickWand*, wand2 : MagickWand*, metricType : MetricType, dp : LibC::Double* ): MagickWand*
  fun magickCompareImageLayers
    = MagickCompareImageLayers( wand : MagickWand*, imageLayerMethod : ImageLayerMethod ): MagickWand*
  fun magickDeconstructImages
    = MagickDeconstructImages( wand : MagickWand* ): MagickWand*
  fun magickEvaluateImages
    = MagickEvaluateImages( wand : MagickWand*, magickEvaluateOperator : MagickEvaluateOperator ): MagickWand*
  fun magickFxImage
    = MagickFxImage( wand : MagickWand*, cp : LibC::Char* ): MagickWand*
  fun magickFxImageChannel
    = MagickFxImageChannel( wand : MagickWand*, channelType : ChannelType, cp : LibC::Char* ): MagickWand*
  fun magickGetImage
    = MagickGetImage( wand : MagickWand* ): MagickWand*
  fun magickGetImageClipMask
    = MagickGetImageClipMask( wand : MagickWand* ): MagickWand*
  fun magickGetImageRegion
    = MagickGetImageRegion( wand : MagickWand*, s1 : LibC::SizeT, s2 : LibC::SizeT, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT ): MagickWand*
  fun magickMergeImageLayers
    = MagickMergeImageLayers( wand : MagickWand*, imageLayerMethod : ImageLayerMethod ): MagickWand*
  fun magickMorphImages
    = MagickMorphImages( wand : MagickWand*, s : LibC::SizeT ): MagickWand*
  fun magickMontageImage
    = MagickMontageImage( wand : MagickWand*, drawingWand : DrawingWand*, cp1 : LibC::Char*, cp2 : LibC::Char*, montageMode : MontageMode, cp3 : LibC::Char* ): MagickWand*
  fun magickOptimizeImageLayers
    = MagickOptimizeImageLayers( wand : MagickWand* ): MagickWand*
  fun magickPreviewImages
    = MagickPreviewImages( wand : MagickWand*, previewType : PreviewType ): MagickWand*
  fun magickSimilarityImage
    = MagickSimilarityImage( wand1 : MagickWand*, wand2 : MagickWand*, rectangleInfo : RectangleInfo*, dp : LibC::Double* ): MagickWand*
  fun magickSmushImages
    = MagickSmushImages( wand : MagickWand*, b : Bool, ss : LibC::SSizeT ): MagickWand*
  fun magickSteganoImage
    = MagickSteganoImage( wand1 : MagickWand*, wand2 : MagickWand*, ss : LibC::SSizeT ): MagickWand*
  fun magickStereoImage
    = MagickStereoImage( wand1 : MagickWand*, wand2 : MagickWand* ): MagickWand*
  fun magickTextureImage
    = MagickTextureImage( wand1 : MagickWand*, wand2 : MagickWand* ): MagickWand*
  fun magickTransformImage
    = MagickTransformImage( wand : MagickWand*, cp1 : LibC::Char*, cp2 : LibC::Char* ): MagickWand*

  fun magickGetImageOrientation
    = MagickGetImageOrientation( wand : MagickWand* ): OrientationType

  fun magickGetImageHistogram
    = MagickGetImageHistogram( wand : MagickWand*, sp : LibC::SizeT* ): PixelWand**

  fun magickGetImageRenderingIntent
    = MagickGetImageRenderingIntent( wand : MagickWand* ): RenderingIntent

  fun magickGetImageUnits
    = MagickGetImageUnits( wand : MagickWand* ): ResolutionType

  # size_t functions
  fun magickGetImageColors
    = MagickGetImageColors( wand : MagickWand* ): LibC::SizeT
  fun magickGetImageCompressionQuality
    = MagickGetImageCompressionQuality( wand : MagickWand* ): LibC::SizeT
  fun magickGetImageDelay
    = MagickGetImageDelay( wand : MagickWand* ): LibC::SizeT
  fun magickGetImageChannelDepth
    = MagickGetImageChannelDepth( wand : MagickWand*, channelType : ChannelType ): LibC::SizeT
  fun magickGetImageDepth
    = MagickGetImageDepth( wand : MagickWand* ): LibC::SizeT
  fun magickGetImageHeight
    = MagickGetImageHeight( wand : MagickWand* ): LibC::SizeT
  fun magickGetImageIterations
    = MagickGetImageIterations( wand : MagickWand* ): LibC::SizeT
  fun magickGetImageScene
    = MagickGetImageScene( wand : MagickWand* ): LibC::SizeT
  fun magickGetImageTicksPerSecond
    = MagickGetImageTicksPerSecond( wand : MagickWand* ): LibC::SizeT
  fun magickGetImageWidth
    = MagickGetImageWidth( wand : MagickWand* ): LibC::SizeT
  fun magickGetNumberImages
    = MagickGetNumberImages( wand : MagickWand* ): LibC::SizeT

  # unsigned char* functions
  fun magickGetImageBlob
    = MagickGetImageBlob( wand : MagickWand*, sp : LibC::SizeT* ): LibC::UChar*
  fun magickGetImagesBlob
    = MagickGetImagesBlob( wand : MagickWand*, sp : LibC::SizeT* ): LibC::UChar*

  fun magickGetImageVirtualPixelMethod
    = MagickGetImageVirtualPixelMethod( wand : MagickWand* ): VirtualPixelMethod
  fun magickSetImageVirtualPixelMethod
    = MagickSetImageVirtualPixelMethod( wand : MagickWand*, virtualPixelMethod : VirtualPixelMethod ): VirtualPixelMethod
end
