lib LibMagick
  enum AlignType
    UndefinedAlign
    LeftAlign
    CenterAlign
    RightAlign
  end

  enum AlphaChannelType
    UndefinedAlphaChannel
    ActivateAlphaChannel
    BackgroundAlphaChannel
    CopyAlphaChannel
    DeactivateAlphaChannel
    ExtractAlphaChannel
    OpaqueAlphaChannel
    ResetAlphaChannel   # deprecated
    SetAlphaChannel
    ShapeAlphaChannel
    TransparentAlphaChannel
    FlattenAlphaChannel
    RemoveAlphaChannel
    AssociateAlphaChannel
    DisassociateAlphaChannel
  end

  enum AlphaChannelOption
    UndefinedAlphaChannel
    ActivateAlphaChannel
    AssociateAlphaChannel
    BackgroundAlphaChannel
    CopyAlphaChannel
    DeactivateAlphaChannel
    DiscreteAlphaChannel
    DisassociateAlphaChannel
    ExtractAlphaChannel
    OffAlphaChannel
    OnAlphaChannel
    OpaqueAlphaChannel
    RemoveAlphaChannel
    SetAlphaChannel
    ShapeAlphaChannel
    TransparentAlphaChannel
  end

  enum ChannelType
    UndefinedChannel = 0x0000
    RedChannel = 0x0001
    GrayChannel = 0x0001
    CyanChannel = 0x0001
    GreenChannel = 0x0002
    MagentaChannel = 0x0002
    BlueChannel = 0x0004
    YellowChannel = 0x0004
    BlackChannel = 0x0008
    AlphaChannel = 0x0010
    OpacityChannel = 0x0010
    IndexChannel = 0x0020
    ReadMaskChannel = 0x0040
    WriteMaskChannel = 0x0080
    MetaChannel = 0x0100
    CompositeChannels = 0x001F
    AllChannels = 0x7ffffff
    TrueAlphaChannel = 0x0100
    RGBChannels = 0x0200
    GrayChannels = 0x0400
    SyncChannels = 0x20000
    DefaultChannels = AllChannels
  end

  enum ClassType
    UndefinedClass
    DirectClass
    PseudoClass
  end

  enum ClipPathUnits
    UndefinedPathUnits
    UserSpace
    UserSpaceOnUse
    ObjectBoundingBox
  end

  enum ColorspaceType
    UndefinedColorspace
    RGBColorspace             # Linear RGB colorspace
    GRAYColorspace            # greyscale (linear) image (faked 1 channel)
    TransparentColorspace
    OHTAColorspace
    LabColorspace
    XYZColorspace
    YCbCrColorspace
    YCCColorspace
    YIQColorspace
    YPbPrColorspace
    YUVColorspace
    CMYKColorspace            # negared linear RGB with black separated
    SRGBColorspace            # Default: non-lienar sRGB colorspace
    HSBColorspace
    HSLColorspace
    HWBColorspace
    Rec601LumaColorspace
    Rec601YCbCrColorspace
    Rec709LumaColorspace
    Rec709YCbCrColorspace
    LogColorspace
    CMYColorspace             # negated linear RGB colorspace
    LuvColorspace
    HCLColorspace
    LCHColorspace             # alias for LCHuv
    LMSColorspace
    LCHabColorspace           # Cylindrical (Polar) Lab
    LCHuvColorspace           # Cylindrical (Polar) Luv
    ScRGBColorspace
    HSIColorspace
    HSVColorspace             # alias for HSB
    HCLpColorspace
    YDbDrColorspace
  end

  enum CommandOption
    MagickUndefinedOptions = -1
    MagickAlignOptions = 0
    MagickAlphaChannelOptions
    MagickBooleanOptions
    MagickCacheOptions
    MagickChannelOptions
    MagickClassOptions
    MagickClipPathOptions
    MagickCoderOptions
    MagickColorOptions
    MagickColorspaceOptions
    MagickCommandOptions
    MagickComplexOptions
    MagickComplianceOptions
    MagickComposeOptions
    MagickCompressOptions
    MagickConfigureOptions
    MagickDataTypeOptions
    MagickDebugOptions
    MagickDecorateOptions
    MagickDelegateOptions
    MagickDirectionOptions
    MagickDisposeOptions
    MagickDistortOptions
    MagickDitherOptions
    MagickEndianOptions
    MagickEvaluateOptions
    MagickFillRuleOptions
    MagickFilterOptions
    MagickFontOptions
    MagickFontsOptions
    MagickFormatOptions
    MagickFunctionOptions
    MagickGradientOptions
    MagickGravityOptions
    MagickIntensityOptions
    MagickIntentOptions
    MagickInterlaceOptions
    MagickInterpolateOptions
    MagickKernelOptions
    MagickLayerOptions
    MagickLineCapOptions
    MagickLineJoinOptions
    MagickListOptions
    MagickLocaleOptions
    MagickLogEventOptions
    MagickLogOptions
    MagickMagicOptions
    MagickMethodOptions
    MagickMetricOptions
    MagickMimeOptions
    MagickModeOptions
    MagickModuleOptions
    MagickMorphologyOptions
    MagickNoiseOptions
    MagickOrientationOptions
    MagickPixelChannelOptions
    MagickPixelIntensityOptions
    MagickPixelMaskOptions
    MagickPixelTraitOptions
    MagickPolicyOptions
    MagickPolicyDomainOptions
    MagickPolicyRightsOptions
    MagickPreviewOptions
    MagickPrimitiveOptions
    MagickQuantumFormatOptions
    MagickResolutionOptions
    MagickResourceOptions
    MagickSparseColorOptions
    MagickStatisticOptions
    MagickStorageOptions
    MagickStretchOptions
    MagickStyleOptions
    MagickThresholdOptions
    MagickTypeOptions
    MagickValidateOptions
    MagickVirtualPixelOptions
    MagickWeightOptions
  end

  enum CompositeOperator
    UndefinedCompositeOp
    AlphaCompositeOp
    AtopCompositeOp
    BlendCompositeOp
    BlurCompositeOp
    BumpmapCompositeOp
    ChangeMaskCompositeOp
    ClearCompositeOp
    ColorBurnCompositeOp
    ColorDodgeCompositeOp
    ColorizeCompositeOp
    CopyBlackCompositeOp
    CopyBlueCompositeOp
    CopyCompositeOp
    CopyCyanCompositeOp
    CopyGreenCompositeOp
    CopyMagentaCompositeOp
    CopyAlphaCompositeOp
    CopyRedCompositeOp
    CopyYellowCompositeOp
    DarkenCompositeOp
    DarkenIntensityCompositeOp
    DifferenceCompositeOp
    DisplaceCompositeOp
    DissolveCompositeOp
    DistortCompositeOp
    DivideDstCompositeOp
    DivideSrcCompositeOp
    DstAtopCompositeOp
    DstCompositeOp
    DstInCompositeOp
    DstOutCompositeOp
    DstOverCompositeOp
    ExclusionCompositeOp
    HardLightCompositeOp
    HardMixCompositeOp
    HueCompositeOp
    InCompositeOp
    IntensityCompositeOp
    LightenCompositeOp
    LightenIntensityCompositeOp
    LinearBurnCompositeOp
    LinearDodgeCompositeOp
    LinearLightCompositeOp
    LuminizeCompositeOp
    MathematicsCompositeOp
    MinusDstCompositeOp
    MinusSrcCompositeOp
    ModulateCompositeOp
    ModulusAddCompositeOp
    ModulusSubtractCompositeOp
    MultiplyCompositeOp
    NoCompositeOp
    OutCompositeOp
    OverCompositeOp
    OverlayCompositeOp
    PegtopLightCompositeOp
    PinLightCompositeOp
    PlusCompositeOp
    ReplaceCompositeOp
    SaturateCompositeOp
    ScreenCompositeOp
    SoftLightCompositeOp
    SrcAtopCompositeOp
    SrcCompositeOp
    SrcInCompositeOp
    SrcOutCompositeOp
    SrcOverCompositeOp
    ThresholdCompositeOp
    VividLightCompositeOp
    XorCompositeOp
  end

  enum CompressionType
    UndefinedCompression
    B44ACompression
    B44Compression
    BZipCompression
    DXT1Compression
    DXT3Compression
    DXT5Compression
    FaxCompression
    Group4Compression
    JBIG1Compression
    JBIG2Compression
    JPEG2000Compression
    JPEGCompression
    LosslessJPEGCompression
    LZMACompression
    LZWCompression
    NoCompression
    PizCompression
    Pxr24Compression
    RLECompression
    ZipCompression
    ZipSCompression
  end

  enum DecorationType
    UndefinedDecoration
    NoDecoration
    UnderlineDecoration
    OverlineDecoration
    LineThroughDecoration
  end

  enum DirectionType
    UndefinedDirection
    RightToLeftDirection
    LeftToRightDirection
  end

  enum DisposeType
    UnrecognizedDispose
    UndefinedDispose = 0
    NoneDispose = 1
    BackgroundDispose = 2
    PreviousDispose = 3
  end

  enum DistortMethod
    UndefinedDistortion
    AffineDistortion
    AffineProjectionDistortion
    ScaleRotateTranslateDistortion
    PerspectiveDistortion
    PerspectiveProjectionDistortion
    BilinearForwardDistortion
    BilinearDistortion = BilinearForwardDistortion
    BilinearReverseDistortion
    PolynomialDistortion
    ArcDistortion
    PolarDistortion
    DePolarDistortion
    Cylinder2PlaneDistortion
    Plane2CylinderDistortion
    BarrelDistortion
    BarrelInverseDistortion
    ShepardsDistortion
    ResizeDistortion
    SentinelDistortion
  end

  enum DitherMethod
    UndefinedDitherMethod
    NoDitherMethod
    RiemersmaDitherMethod
    FloydSteinbergDitherMethod
  end

  enum EndianType
    UndefinedEndian
    LSBEndian
    MSBEndian
  end

  enum ExceptionType
    UndefinedException
    WarningException = 300
    ResourceLimitWarning = 300
    TypeWarning = 305
    OptionWarning = 310
    DelegateWarning = 315
    MissingDelegateWarning = 320
    CorruptImageWarning = 325
    FileOpenWarning = 330
    BlobWarning = 335
    StreamWarning = 340
    CacheWarning = 345
    CoderWarning = 350
    FilterWarning = 352
    ModuleWarning = 355
    DrawWarning = 360
    ImageWarning = 365
    WandWarning = 370
    RandomWarning = 375
    XServerWarning = 380
    MonitorWarning = 385
    RegistryWarning = 390
    ConfigureWarning = 395
    PolicyWarning = 399
    ErrorException = 400
    ResourceLimitError = 400
    TypeError = 405
    OptionError = 410
    DelegateError = 415
    MissingDelegateError = 420
    CorruptImageError = 425
    FileOpenError = 430
    BlobError = 435
    StreamError = 440
    CacheError = 445
    CoderError = 450
    FilterError = 452
    ModuleError = 455
    DrawError = 460
    ImageError = 465
    WandError = 470
    RandomError = 475
    XServerError = 480
    MonitorError = 485
    RegistryError = 490
    ConfigureError = 495
    PolicyError = 499
    FatalErrorException = 700
    ResourceLimitFatalError = 700
    TypeFatalError = 705
    OptionFatalError = 710
    DelegateFatalError = 715
    MissingDelegateFatalError = 720
    CorruptImageFatalError = 725
    FileOpenFatalError = 730
    BlobFatalError = 735
    StreamFatalError = 740
    CacheFatalError = 745
    CoderFatalError = 750
    FilterFatalError = 752
    ModuleFatalError = 755
    DrawFatalError = 760
    ImageFatalError = 765
    WandFatalError = 770
    RandomFatalError = 775
    XServerFatalError = 780
    MonitorFatalError = 785
    RegistryFatalError = 790
    ConfigureFatalError = 795
    PolicyFatalError = 799
  end

  enum FillRule
    UndefinedRule
    #undef EvenOddRule
    EvenOddRule
    NonZeroRule
  end

  enum FilterTypes
    UndefinedFilter
    PointFilter
    BoxFilter
    TriangleFilter
    HermiteFilter
    HanningFilter
    HammingFilter
    BlackmanFilter
    GaussianFilter
    QuadraticFilter
    CubicFilter
    CatromFilter
    MitchellFilter
    JincFilter
    SincFilter
    SincFastFilter
    KaiserFilter
    WelshFilter
    ParzenFilter
    BohmanFilter
    BartlettFilter
    LagrangeFilter
    LanczosFilter
    LanczosSharpFilter
    Lanczos2Filter
    Lanczos2SharpFilter
    RobidouxFilter
    RobidouxSharpFilter
    CosineFilter
    SplineFilter
    LanczosRadiusFilter
    SentinelFilter  # a count of all the filters, not a real filter
  end

  enum GradientType
    UndefinedGradient
    LinearGradient
    RadialGradient
  end

  enum GravityType
    UndefinedGravity
    ForgetGravity = 0
    NorthWestGravity = 1
    NorthGravity = 2
    NorthEastGravity = 3
    WestGravity = 4
    CenterGravity = 5
    EastGravity = 6
    SouthWestGravity = 7
    SouthGravity = 8
    SouthEastGravity = 9
  end

  enum ImageType
    UndefinedType
    BilevelType
    GrayscaleType
    GrayscaleAlphaType
    PaletteType
    PaletteAlphaType
    TrueColorType
    TrueColorAlphaType
    ColorSeparationType
    ColorSeparationAlphaType
    OptimizeType
    PaletteBilevelAlphaType
  end

  enum InterlaceType
    UndefinedInterlace
    NoInterlace
    LineInterlace
    PlaneInterlace
    PartitionInterlace
    GIFInterlace
    JPEGInterlace
    PNGInterlace
  end

  enum KernelInfoType
    UndefinedKernel
    UnityKernel
    GaussianKernel
    DoGKernel
    LoGKernel
    BlurKernel
    CometKernel
    BinomialKernel
    LaplacianKernel
    SobelKernel
    FreiChenKernel
    RobertsKernel
    PrewittKernel
    CompassKernel
    KirschKernel
    DiamondKernel
    SquareKernel
    RectangleKernel
    OctagonKernel
    DiskKernel
    PlusKernel
    CrossKernel
    RingKernel
    PeaksKernel
    EdgesKernel
    CornersKernel
    DiagonalsKernel
    LineEndsKernel
    LineJunctionsKernel
    RidgesKernel
    ConvexHullKernel
    ThinSEKernel
    SkeletonKernel
    ChebyshevKernel
    ManhattanKernel
    OctagonalKernel
    EuclideanKernel
    UserDefinedKernel
  end

  enum LayerMethod
    UndefinedLayer
    CoalesceLayer
    CompareAnyLayer
    CompareClearLayer
    CompareOverlayLayer
    DisposeLayer
    OptimizeLayer
    OptimizeImageLayer
    OptimizePlusLayer
    OptimizeTransLayer
    RemoveDupsLayer
    RemoveZeroLayer
    CompositeLayer
    MergeLayer
    FlattenLayer
    MosaicLayer
    TrimBoundsLayer
  end

  enum LineCap
    UndefinedCap
    ButtCap
    RoundCap
    SquareCap
  end

  enum LineJoin
    UndefinedJoin
    MiterJoin
    RoundJoin
    BevelJoin
  end

  enum MagickEvaluateOperator
    UndefinedEvaluateOperator
    AbsEvaluateOperator
    AddEvaluateOperator
    AddModulusEvaluateOperator
    AndEvaluateOperator
    CosineEvaluateOperator
    DivideEvaluateOperator
    ExponentialEvaluateOperator
    GaussianNoiseEvaluateOperator
    ImpulseNoiseEvaluateOperator
    LaplacianNoiseEvaluateOperator
    LeftShiftEvaluateOperator
    LogEvaluateOperator
    MaxEvaluateOperator
    MeanEvaluateOperator
    MedianEvaluateOperator
    MinEvaluateOperator
    MultiplicativeNoiseEvaluateOperator
    MultiplyEvaluateOperator
    OrEvaluateOperator
    PoissonNoiseEvaluateOperator
    PowEvaluateOperator
    RightShiftEvaluateOperator
    RootMeanSquareEvaluateOperator
    SetEvaluateOperator
    SineEvaluateOperator
    SubtractEvaluateOperator
    SumEvaluateOperator
    ThresholdBlackEvaluateOperator
    ThresholdEvaluateOperator
    ThresholdWhiteEvaluateOperator
    UniformNoiseEvaluateOperator
    XorEvaluateOperator
  end

  enum MagickFormatType
    UndefinedFormatType
    ImplicitFormatType
    ExplicitFormatType
  end

  enum MagickFunction
    UndefinedFunction
    ArcsinFunction
    ArctanFunction
    PolynomialFunction
    SinusoidFunction
  end

  enum MetricType
    UndefinedErrorMetric
    AbsoluteErrorMetric
    FuzzErrorMetric
    MeanAbsoluteErrorMetric
    MeanErrorPerPixelErrorMetric
    MeanSquaredErrorMetric
    NormalizedCrossCorrelationErrorMetric
    PeakAbsoluteErrorMetric
    PeakSignalToNoiseRatioErrorMetric
    PerceptualHashErrorMetric
    RootMeanSquaredErrorMetric
  end

  enum MontageMode
    UndefinedMode
    FrameMode
    UnframeMode
    ConcatenateMode
  end

  enum MorphologyMethod
    UndefinedMorphology
    ConvolveMorphology
    CorrelateMorphology
    ErodeMorphology
    DilateMorphology
    ErodeIntensityMorphology
    DilateIntensityMorphology
    IterativeDistanceMorphology
    OpenMorphology
    CloseMorphology
    OpenIntensityMorphology
    CloseIntensityMorphology
    SmoothMorphology
    EdgeInMorphology
    EdgeOutMorphology
    EdgeMorphology
    TopHatMorphology
    BottomHatMorphology
    HitAndMissMorphology
    ThinningMorphology
    ThickenMorphology
    DistanceMorphology
    VoronoiMorphology
  end

  enum NoiseType
    UndefinedNoise
    UniformNoise
    GaussianNoise
    MultiplicativeGaussianNoise
    ImpulseNoise
    LaplacianNoise
    PoissonNoise
    RandomNoise
  end

  enum OrientationType
    UndefinedOrientation
    TopLeftOrientation
    TopRightOrientation
    BottomRightOrientation
    BottomLeftOrientation
    LeftTopOrientation
    RightTopOrientation
    RightBottomOrientation
    LeftBottomOrientation
  end

  enum PaintMethod
    UndefinedMethod
    PointMethod
    ReplaceMethod
    FloodfillMethod
    FillToBorderMethod
    ResetMethod
  end

  enum PathMode
    DefaultPathMode
    AbsolutePathMode
    RelativePathMode
  end

  enum PathOperation
    PathDefaultOperation
    PathCloseOperation                         # Z|z (none)
    PathCurveToOperation                       # C|c (x1 y1 x2 y2 x y)+
    PathCurveToQuadraticBezierOperation        # Q|q (x1 y1 x y)+
    PathCurveToQuadraticBezierSmoothOperation  # T|t (x y)+
    PathCurveToSmoothOperation                 # S|s (x2 y2 x y)+
    PathEllipticArcOperation                   # A|a (rx ry x-axis-rotation large-arc-flag sweep-flag x y)+
    PathLineToHorizontalOperation              # H|h x+
    PathLineToOperation                        # L|l (x y)+
    PathLineToVerticalOperation                # V|v y+
    PathMoveToOperation                        # M|m (x y)+
  end

  enum PixelIntensityMethod
    UndefinedPixelIntensityMethod = 0
    AveragePixelIntensityMethod
    BrightnessPixelIntensityMethod
    LightnessPixelIntensityMethod
    MSPixelIntensityMethod
    Rec601LumaPixelIntensityMethod
    Rec601LuminancePixelIntensityMethod
    Rec709LumaPixelIntensityMethod
    Rec709LuminancePixelIntensityMethod
    RMSPixelIntensityMethod
  end

  enum PixelInterpolateMethod
    UndefinedInterpolatePixel
    AverageInterpolatePixel
    Average9InterpolatePixel
    Average16InterpolatePixel
    BackgroundInterpolatePixel
    BilinearInterpolatePixel
    BlendInterpolatePixel
    CatromInterpolatePixel
    IntegerInterpolatePixel
    MeshInterpolatePixel
    NearestInterpolatePixel
    SplineInterpolatePixel
  end

  enum PixelMask
    UndefinedPixelMask = 0x000000
    ReadPixelMask = 0x000001
    WritePixelMask = 0x000002
  end

  enum PixelTrait
    UndefinedPixelTrait = 0x000000
    CopyPixelTrait = 0x000001
    UpdatePixelTrait = 0x000002
    BlendPixelTrait = 0x000004
  end

  enum PreviewType
    UndefinedPreview
    RotatePreview
    ShearPreview
    RollPreview
    HuePreview
    SaturationPreview
    BrightnessPreview
    GammaPreview
    SpiffPreview
    DullPreview
    GrayscalePreview
    QuantizePreview
    DespecklePreview
    ReduceNoisePreview
    AddNoisePreview
    SharpenPreview
    BlurPreview
    ThresholdPreview
    EdgeDetectPreview
    SpreadPreview
    SolarizePreview
    ShadePreview
    RaisePreview
    SegmentPreview
    SwirlPreview
    ImplodePreview
    WavePreview
    OilPaintPreview
    CharcoalDrawingPreview
    JPEGPreview
  end

  enum PrimitiveType
    UndefinedPrimitive
    AlphaPrimitive
    ArcPrimitive
    BezierPrimitive
    CirclePrimitive
    ColorPrimitive
    EllipsePrimitive
    ImagePrimitive
    LinePrimitive
    PathPrimitive
    PointPrimitive
    PolygonPrimitive
    PolylinePrimitive
    RectanglePrimitive
    RoundRectanglePrimitive
    TextPrimitive
  end

  enum ReferenceType
    UndefinedReference
    GradientReference
  end

  enum RenderingIntent
    UndefinedIntent
    SaturationIntent
    PerceptualIntent
    AbsoluteIntent
    RelativeIntent
  end

  enum ResolutionType
    UndefinedResolution
    PixelsPerInchResolution
    PixelsPerCentimeterResolution
  end

  enum ResourceType
    UndefinedResource
    AreaResource
    DiskResource
    FileResource
    HeightResource
    MapResource
    MemoryResource
    ThreadResource
    ThrottleResource
    TimeResource
    WidthResource
  end

  enum SparseColorMethod
    UndefinedColorInterpolate = DistortMethod::UndefinedDistortion
    BarycentricColorInterpolate = DistortMethod::AffineDistortion
    BilinearColorInterpolate = DistortMethod::BilinearReverseDistortion
    PolynomialColorInterpolate = DistortMethod::PolynomialDistortion
    ShepardsColorInterpolate = DistortMethod::ShepardsDistortion
    # Methods unique to SparseColor().
    VoronoiColorInterpolate = DistortMethod::SentinelDistortion
    InverseColorInterpolate
    ManhattanColorInterpolate
  end

  enum SpreadMethod
    UndefinedSpread
    PadSpread
    ReflectSpread
    RepeatSpread
  end

  enum StatisticType
    UndefinedStatistic
    GradientStatistic
    MaximumStatistic
    MeanStatistic
    MedianStatistic
    MinimumStatistic
    ModeStatistic
    NonpeakStatistic
    RootMeanSquareStatistic
    StandardDeviationStatistic
  end

  enum StorageType
    UndefinedPixel
    CharPixel
    DoublePixel
    FloatPixel
    LongPixel
    LongLongPixel
    QuantumPixel
    ShortPixel
  end

  enum StretchType
    UndefinedStretch
    NormalStretch
    UltraCondensedStretch
    ExtraCondensedStretch
    CondensedStretch
    SemiCondensedStretch
    SemiExpandedStretch
    ExpandedStretch
    ExtraExpandedStretch
    UltraExpandedStretch
    AnyStretch
  end

  enum StyleType
    UndefinedStyle
    NormalStyle
    ItalicStyle
    ObliqueStyle
    AnyStyle
  end

  enum TimerState
    UndefinedTimerState
    StoppedTimerState
    RunningTimerState
  end

  enum VirtualPixelMethod
    UndefinedVirtualPixelMethod
    BackgroundVirtualPixelMethod
    DitherVirtualPixelMethod
    EdgeVirtualPixelMethod
    MirrorVirtualPixelMethod
    RandomVirtualPixelMethod
    TileVirtualPixelMethod
    TransparentVirtualPixelMethod
    MaskVirtualPixelMethod
    BlackVirtualPixelMethod
    GrayVirtualPixelMethod
    WhiteVirtualPixelMethod
    HorizontalTileVirtualPixelMethod
    VerticalTileVirtualPixelMethod
    HorizontalTileEdgeVirtualPixelMethod
    VerticalTileEdgeVirtualPixelMethod
    CheckerTileVirtualPixelMethod
  end
end
