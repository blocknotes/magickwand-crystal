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

  enum ChannelType
    UndefinedChannel
    RedChannel = 0x0001
    GrayChannel = 0x0001
    CyanChannel = 0x0001
    GreenChannel = 0x0002
    MagentaChannel = 0x0002
    BlueChannel = 0x0004
    YellowChannel = 0x0004
    AlphaChannel = 0x0008
    OpacityChannel = 0x0008
    MatteChannel = 0x0008     # deprecated
    BlackChannel = 0x0020
    IndexChannel = 0x0020
    CompositeChannels = 0x002F
    AllChannels = 0x7ffffff
    # Special purpose channel types.
    TrueAlphaChannel = 0x0040 # extract actual alpha channel from opacity
    RGBChannels = 0x0080      # set alpha from  grayscale mask in RGB
    GrayChannels = 0x0080
    SyncChannels = 0x0100     # channels should be modified equally
    DefaultChannels = ((AllChannels | SyncChannels) &~ OpacityChannel)
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
    UndefinedColorspacem
    RGBColorspacem            # Linear RGB colorspace
    GRAYColorspacem           # greyscale (linear) image (faked 1 channel)
    TransparentColorspacem
    OHTAColorspacem
    LabColorspacem
    XYZColorspacem
    YCbCrColorspacem
    YCCColorspacem
    YIQColorspacem
    YPbPrColorspacem
    YUVColorspacem
    CMYKColorspacem           # negated linear RGB with black separated
    SRGBColorspacem           # Default: non-linear sRGB colorspace
    HSBColorspacem
    HSLColorspacem
    HWBColorspacem
    Rec601LumaColorspacem
    Rec601YCbCrColorspacem
    Rec709LumaColorspacem
    Rec709YCbCrColorspacem
    LogColorspacem
    CMYColorspacem            # negated linear RGB colorspace
    LuvColorspacem
    HCLColorspacem
    LCHColorspacem            # alias for LCHuv
    LMSColorspacem
    LCHabColorspacem          # Cylindrical (Polar) Lab
    LCHuvColorspacem          # Cylindrical (Polar) Luv
    ScRGBColorspacem
    HSIColorspacem
    HSVColorspacem            # alias for HSB
    HCLpColorspacem
    YDbDrColorspacem
    XyYColorspace
  end

  enum CompositeOperator
    UndefinedCompositeOp
    NoCompositeOp
    ModulusAddCompositeOp
    AtopCompositeOp
    BlendCompositeOp
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
    CopyOpacityCompositeOp
    CopyRedCompositeOp
    CopyYellowCompositeOp
    DarkenCompositeOp
    DstAtopCompositeOp
    DstCompositeOp
    DstInCompositeOp
    DstOutCompositeOp
    DstOverCompositeOp
    DifferenceCompositeOp
    DisplaceCompositeOp
    DissolveCompositeOp
    ExclusionCompositeOp
    HardLightCompositeOp
    HueCompositeOp
    InCompositeOp
    LightenCompositeOp
    LinearLightCompositeOp
    LuminizeCompositeOp
    MinusDstCompositeOp
    ModulateCompositeOp
    MultiplyCompositeOp
    OutCompositeOp
    OverCompositeOp
    OverlayCompositeOp
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
    ModulusSubtractCompositeOp
    ThresholdCompositeOp
    XorCompositeOp
    # These are new operators, added after the above was last sorted. The list should be re-sorted only when a new library version is created.
    DivideDstCompositeOp
    DistortCompositeOp
    BlurCompositeOp
    PegtopLightCompositeOp
    VividLightCompositeOp
    PinLightCompositeOp
    LinearDodgeCompositeOp
    LinearBurnCompositeOp
    MathematicsCompositeOp
    DivideSrcCompositeOp
    MinusSrcCompositeOp
    DarkenIntensityCompositeOp
    LightenIntensityCompositeOp
    HardMixCompositeOp
  end

  enum CompressionType
    UndefinedCompression
    NoCompression
    BZipCompression
    DXT1Compression
    DXT3Compression
    DXT5Compression
    FaxCompression
    Group4Compression
    JPEGCompression
    JPEG2000Compression       # ISO/IEC std 15444-1
    LosslessJPEGCompression
    LZWCompression
    RLECompression
    ZipCompression
    ZipSCompression
    PizCompression
    Pxr24Compression
    B44Compression
    B44ACompression
    LZMACompression             # Lempel-Ziv-Markov chain algorithm
    JBIG1Compression            # ISO/IEC std 11544 / ITU-T rec T.82
    JBIG2Compression            # ISO/IEC std 14492 / ITU-T rec T.88
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

  enum DistortImageMethod
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
    UndefinedRule,
    #undef EvenOddRule
    EvenOddRule,
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
    StaticGravity = 10
  end

  enum ImageLayerMethod
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

  enum ImageType
    UndefinedType
    BilevelType
    GrayscaleType
    GrayscaleMatteType
    PaletteType
    PaletteMatteType
    TrueColorType
    TrueColorMatteType
    ColorSeparationType
    ColorSeparationMatteType
    OptimizeType
    PaletteBilevelMatteType
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

  enum InterpolatePixelMethod
    UndefinedInterpolatePixel
    AverageInterpolatePixel            # Average 4 nearest neighbours
    BicubicInterpolatePixel            # Catmull-Rom interpolation
    BilinearInterpolatePixel           # Triangular filter interpolation
    FilterInterpolatePixel             # Use resize filter - (very slow)
    IntegerInterpolatePixel            # Integer (floor) interpolation
    MeshInterpolatePixel               # Triangular mesh interpolation
    NearestNeighborInterpolatePixel    # Nearest neighbour only
    SplineInterpolatePixel             # Cubic Spline (blurred) interpolation
    Average9InterpolatePixel           # Average 9 nearest neighbours
    Average16InterpolatePixel          # Average 16 nearest neighbours
    BlendInterpolatePixel              # blend of nearest 1, 2 or 4 pixels
    BackgroundInterpolatePixel         # just return background color
    CatromInterpolatePixel             # Catmull-Rom interpolation
  end

  enum KernelInfoType
    UndefinedKernel    # equivalent to UnityKernel
    UnityKernel        # The no-op or 'original image' kernel
    GaussianKernel     # Convolution Kernels, Gaussian Based
    DoGKernel
    LoGKernel
    BlurKernel
    CometKernel
    LaplacianKernel    # Convolution Kernels, by Name
    SobelKernel
    FreiChenKernel
    RobertsKernel
    PrewittKernel
    CompassKernel
    KirschKernel
    DiamondKernel      # Shape Kernels
    SquareKernel
    RectangleKernel
    OctagonKernel
    DiskKernel
    PlusKernel
    CrossKernel
    RingKernel
    PeaksKernel         # Hit And Miss Kernels
    EdgesKernel
    CornersKernel
    DiagonalsKernel
    LineEndsKernel
    LineJunctionsKernel
    RidgesKernel
    ConvexHullKernel
    ThinSEKernel
    SkeletonKernel
    ChebyshevKernel    # Distance Measuring Kernels
    ManhattanKernel
    OctagonalKernel
    EuclideanKernel
    UserDefinedKernel   # User Specified Kernel Array
    BinomialKernel
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
    AddEvaluateOperator
    AndEvaluateOperator
    DivideEvaluateOperator
    LeftShiftEvaluateOperator
    MaxEvaluateOperator
    MinEvaluateOperator
    MultiplyEvaluateOperator
    OrEvaluateOperator
    RightShiftEvaluateOperator
    SetEvaluateOperator
    SubtractEvaluateOperator
    XorEvaluateOperator
    PowEvaluateOperator
    LogEvaluateOperator
    ThresholdEvaluateOperator
    ThresholdBlackEvaluateOperator
    ThresholdWhiteEvaluateOperator
    GaussianNoiseEvaluateOperator
    ImpulseNoiseEvaluateOperator
    LaplacianNoiseEvaluateOperator
    MultiplicativeNoiseEvaluateOperator
    PoissonNoiseEvaluateOperator
    UniformNoiseEvaluateOperator
    CosineEvaluateOperator
    SineEvaluateOperator
    AddModulusEvaluateOperator
    MeanEvaluateOperator
    AbsEvaluateOperator
    ExponentialEvaluateOperator
    MedianEvaluateOperator
    SumEvaluateOperator
    RootMeanSquareEvaluateOperator
  end

  enum MagickFunction
    UndefinedFunction
    PolynomialFunction
    SinusoidFunction
    ArcsinFunction
    ArctanFunction
  end

  enum MetricType
    UndefinedMetric
    AbsoluteErrorMetric
    MeanAbsoluteErrorMetric
    MeanErrorPerPixelMetric
    MeanSquaredErrorMetric
    PeakAbsoluteErrorMetric
    PeakSignalToNoiseRatioMetric
    RootMeanSquaredErrorMetric
    NormalizedCrossCorrelationErrorMetric
    FuzzErrorMetric
    UndefinedErrorMetric = 0
    PerceptualHashErrorMetric = 0xff
  end

  enum MontageMode
    UndefinedMode
    FrameMode
    UnframeMode
    ConcatenateMode
  end

  enum MorphologyMethod
    UndefinedMorphology
  # Convolve / Correlate weighted sums
    ConvolveMorphology            # Weighted Sum with reflected kernel
    CorrelateMorphology           # Weighted Sum using a sliding window
  # Low-level Morphology methods
    ErodeMorphology               # Minimum Value in Neighbourhood
    DilateMorphology              # Maximum Value in Neighbourhood
    ErodeIntensityMorphology      # Pixel Pick using GreyScale Erode
    DilateIntensityMorphology     # Pixel Pick using GreyScale Dialate
    DistanceMorphology            # Add Kernel Value  take Minimum
  # Second-level Morphology methods
    OpenMorphology                # Dilate then Erode
    CloseMorphology               # Erode then Dilate
    OpenIntensityMorphology       # Pixel Pick using GreyScale Open
    CloseIntensityMorphology      # Pixel Pick using GreyScale Close
    SmoothMorphology              # Open then Close
  # Difference Morphology methods
    EdgeInMorphology              # Dilate difference from Original
    EdgeOutMorphology             # Erode difference from Original
    EdgeMorphology                # Dilate difference with Erode
    TopHatMorphology              # Close difference from Original
    BottomHatMorphology           # Open difference from Original
  # Recursive Morphology methods
    HitAndMissMorphology          # Foreground/Background pattern matching
    ThinningMorphology            # Remove matching pixels from image
    ThickenMorphology             # Add matching pixels from image
  # Experimental Morphology methods
    VoronoiMorphology             # distance matte channel copy nearest color
    IterativeDistanceMorphology   # Add Kernel Value, take Minimum
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

  enum PathMode
    DefaultPathMode,
    AbsolutePathMode,
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
    Rec601LumaPixelIntensityMethod
    Rec601LuminancePixelIntensityMethod
    Rec709LumaPixelIntensityMethod
    Rec709LuminancePixelIntensityMethod
    RMSPixelIntensityMethod
    MSPixelIntensityMethod
  end

  enum PixelTrait
    UndefinedPixelTrait = 0x000000
    CopyPixelTrait = 0x000001
    UpdatePixelTrait = 0x000002
    BlendPixelTrait = 0x000004
  end

  struct PointInfo
    x : LibC::Double
    y : LibC::Double
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
    UndefinedResolution,
    PixelsPerInchResolution,
    PixelsPerCentimeterResolution
  end

  enum SparseColorMethod
    UndefinedColorInterpolate = DistortImageMethod::UndefinedDistortion
    BarycentricColorInterpolate = DistortImageMethod::AffineDistortion
    BilinearColorInterpolate = DistortImageMethod::BilinearReverseDistortion
    PolynomialColorInterpolate = DistortImageMethod::PolynomialDistortion
    ShepardsColorInterpolate = DistortImageMethod::ShepardsDistortion
    # Methods unique to SparseColor().
    VoronoiColorInterpolate = DistortImageMethod::SentinelDistortion
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
    StandardDeviationStatistic
    RootMeanSquareStatistic
  end

  enum StorageType
    UndefinedPixel
    CharPixel
    DoublePixel
    FloatPixel
    IntegerPixel
    LongPixel
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
