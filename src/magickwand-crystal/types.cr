require "./enums"
require "./lib_std"

lib LibMagick
  MaxTextExtent = 4096
  MagickPathExtent = 4096
  QuantumRange = 65535.0 # 255.0

  type MagickMutexType = LibC::SizeT
  type MagickOffsetType = LibC::SSizeT
  type MagickRealType = LibC::Float
  type MagickSizeType = LibC::SizeT
  type MagickThreadType = LibC::PidT
  type Quantum = LibC::Float
  type IndexPacket = Quantum

  type MagickProgressMonitor = LibC::Char*, MagickOffsetType, MagickSizeType, Void* -> Bool

  struct AffineMatrix
    sx : LibC::Double
    rx : LibC::Double
    ry : LibC::Double
    sy : LibC::Double
    tx : LibC::Double
    ty : LibC::Double
  end

  struct Ascii85Info
    offset : LibC::Int
    line_break : LibC::Int
    buffer : LibC::UChar[10]
  end

  struct BlobInfo
    mapped : LibC::UInt
    data : LibC::UChar*
    offset : LibC::OffT
    length : LibC::SizeT
    extent : LibC::SizeT
    quantum : LibC::SizeT
    eof : LibC::UInt
    signature : LibC::ULong
  end

  struct ChannelFeatures
    angular_second_moment : LibC::Double[4]
    contrast : LibC::Double[4]
    correlation : LibC::Double[4]
    variance_sum_of_squares : LibC::Double[4]
    inverse_difference_moment : LibC::Double[4]
    sum_average : LibC::Double[4]
    sum_variance : LibC::Double[4]
    sum_entropy : LibC::Double[4]
    entropy : LibC::Double[4]
    difference_variance : LibC::Double[4]
    difference_entropy : LibC::Double[4]
    measure_of_correlation_1 : LibC::Double[4]
    measure_of_correlation_2 : LibC::Double[4]
    maximum_correlation_coefficient : LibC::Double[4]
  end

  struct ChannelStatistics
    depth : LibC::SizeT
    minima : LibC::SizeT
    maxima : LibC::SizeT
    sum : LibC::SizeT
    sum_squared : LibC::SizeT
    sum_cubed : LibC::SizeT
    sum_fourth_power : LibC::SizeT
    mean : LibC::SizeT
    variance : LibC::SizeT
    standard_deviation : LibC::SizeT
    kurtosis : LibC::SizeT
    skewness : LibC::SizeT
    entropy : LibC::SizeT
  end

  struct ChromaticityInfo
    red_primary : PrimaryInfo
    green_primary : PrimaryInfo
    blue_primary : PrimaryInfo
    white_point : PrimaryInfo
  end

  struct ColorInfo
    path : LibC::Char*
    name : LibC::Char*
    compliance : LibC::Char
    color : LibC::Char
    exempt : LibC::Char
    stealth : LibC::Char
    previous : LibC::Char*
    next : LibC::Char*
    signature : LibC::Char
  end

  struct DrawInfo
    primitive : LibC::Char*
    geometry : LibC::Char*
    viewbox : LibC::Char
    affine : LibC::Char
    gravity : LibC::Char
    fill : LibC::Char
    stroke : LibC::Char
    stroke_width : LibC::Char
    gradient : LibC::Char
    fill_pattern : LibC::Char*
    tile : LibC::Char*
    stroke_pattern : LibC::Char*
    stroke_antialias : LibC::Char
    text_antialias : LibC::Char
    fill_rule : LibC::Char
    linecap : LibC::Char
    linejoin : LibC::Char
    miterlimit : LibC::Char
    dash_offset : LibC::Char
    decorate : LibC::Char
    compose : LibC::Char
    text : LibC::Char*
    face : LibC::Char
    font : LibC::Char*
    metrics : LibC::Char*
    family : LibC::Char*
    style : LibC::Char
    stretch : LibC::Char
    weight : LibC::Char
    encoding : LibC::Char*
    pointsize : LibC::Char
    density : LibC::Char*
    align : LibC::Char
    undercolor : LibC::Char
    border_color : LibC::Char
    server_name : LibC::Char*
    dash_pattern : LibC::Char*
    clip_mask : LibC::Char*
    bounds : LibC::Char
    clip_units : LibC::Char
    opacity : LibC::Char
    render : LibC::Char
    element_reference : LibC::Char
    debug : LibC::Char
    signature : LibC::Char
    kerning : LibC::Char
    interword_spacing : LibC::Char
    interline_spacing : LibC::Char
    direction : LibC::Char
    fill_opacity : LibC::Char
    stroke_opacity : LibC::Char
  end

  struct DrawingWand
    id : LibC::SizeT
    name : LibC::Char[MagickPathExtent]
    image : Image*
    exception : ExceptionInfo*
    mvg : LibC::Char*               # MVG data
    mvg_alloc : LibC::SizeT          # total allocated memory
    mvg_length : LibC::SizeT         # total MVG length
    mvg_width : LibC::SizeT          # current line width
    pattern_id : LibC::Char*
    pattern_bounds : RectangleInfo
    pattern_offset : LibC::SizeT
    # Graphic wand
    index : LibC::SizeT              # array index
    graphic_context : DrawInfo**
    filter_off : Bool         # true if not filtering attributes
    # Pretty-printing depth
    indent_depth : LibC::SizeT       # number of left-hand pad characters
    # Path operation support
    path_operation : PathOperation
    path_mode : PathMode
    destroy : Bool
    debug : Bool
    signature : LibC::SizeT
  end

  struct ElementReference
    id : LibC::Char*
    type : LibC::Char
    gradient : LibC::Char
    signature : LibC::Char
    previous : LibC::Char*
    next : LibC::Char*
  end

  struct ErrorInfo
    mean_error_per_pixel : LibC::Double
    normalized_mean_error : LibC::Double
    normalized_maximum_error : LibC::Double
  end

  struct ExceptionInfo
    severity : ExceptionType
    reason : LibC::Char*
    description : LibC::Char*
    signature : LibC::ULong
  end

  struct GeometryInfo
    rho : LibC::Double
    sigma : LibC::Double
    xi : LibC::Double
    psi : LibC::Double
    chi : LibC::Double
  end

  struct GradientInfo
    type : GradientType
    bounding_box : GradientType
    gradient_vector : GradientType
    stops : GradientType*
    number_stops : GradientType
    spread : GradientType
    debug : GradientType
    signature : GradientType
    center : GradientType
    radius : GradientType
    angle : GradientType
    radii : GradientType
  end

  struct Image
    storage_class : ClassType
    colorspace : ColorspaceType      # colorspace of image data
    compression : CompressionType     # compression of image when read/write
    quality : LibC::SizeT         # compression quality setting, meaning varies
    orientation : OrientationType     # photo orientation of image
    taint : Bool           # has image been modified since reading
    matte : Bool           # is transparency channel defined and active
    columns : LibC::SizeT         # physical size of image
    rows : LibC::SizeT
    depth : LibC::SizeT           # depth of image on read/write
    colors : LibC::SizeT          # size of color table on read
    colormap : PixelPacket*
    background_color : PixelPacket # current background color attribute
    border_color : PixelPacket     # current bordercolor attribute
    matte_color : PixelPacket      # current mattecolor attribute
    gamma : LibC::Double
    chromaticity : ChromaticityInfo
    rendering_intent : RenderingIntent
    profiles : Void*
    units : ResolutionType          # resolution/density  ppi or ppc
    montage : LibC::Char*
    directory : LibC::Char*
    geometry : LibC::Char*
    offset : LibC::SSizeT
    x_resolution : LibC::Double   # image resolution/density
    y_resolution : LibC::Double
    page : RectangleInfo           # virtual canvas size and offset of image
    extract_info : RectangleInfo
    tile_info : RectangleInfo      # deprecated
    bias : LibC::Double
    blur : LibC::Double           # deprecated
    fuzz : LibC::Double           # current color fuzz attribute
    filter : FilterTypes         # resize/distort filter to apply
    interlace : InterlaceType
    endian : EndianType         # raw data integer ordering on read/write
    gravity : GravityType        # Gravity attribute for positioning in image
    compose : CompositeOperator        # alpha composition method for layered images
    dispose : DisposeType        # GIF animation disposal method
    clip_mask : Image*
    scene : LibC::SizeT          # index of image in multi-image file
    delay : LibC::SizeT          # Animation delay time
    ticks_per_second : LibC::SSizeT  # units for delay time, default 100 for GIF
    iterations : LibC::SizeT
    total_colors : LibC::SizeT
    start_loop : LibC::SSizeT
    error : ErrorInfo
    timer : TimerInfo
    progress_monitor : MagickProgressMonitor
    client_data : Void*
    cache : Void*
    attributes : Void*      # deprecated
    ascii85 : Ascii85Info*
    blob : BlobInfo*
    filename : LibC::Char[MaxTextExtent]         # images input filename
    magick_filename : LibC::Char[MaxTextExtent]  # ditto with coders, and read_mods
    magick : LibC::Char[MaxTextExtent]           # Coder used to decode image
    magick_columns : LibC::SizeT
    magick_rows : LibC::SizeT
    exception : ExceptionInfo        # Error handling report
    debug : Bool            # debug output attribute
    reference_count : LibC::SizeT
    semaphore : SemaphoreInfo*
    color_profile : ProfileInfo
    iptc_profile : ProfileInfo
    generic_profile : ProfileInfo*
    generic_profiles : LibC::SizeT  # this & ProfileInfo is deprecated
    signature : LibC::SizeT
    previous : Image*         # Image list links
    list : Image*             # Undo/Redo image processing list (for display)
    next : Image*             # Image list links
    interpolate : InterpolatePixelMethod       # Interpolation of color for between pixel lookups
    black_point_compensation : Bool
    transparent_color : PixelPacket # color for 'transparent' color index in GIF
    mask : Image*
    tile_offset : RectangleInfo
    properties : Void*       # per image properities
    artifacts : Void*        # per image sequence image artifacts
    type : ImageType
    dither : Bool            # dithering method during color reduction
    extent : MagickSizeType
    ping : Bool
    channels : LibC::SizeT
    timestamp : LibC::TimeT
    intensity : PixelIntensityMethod      # method to generate an intensity value from a pixel
    duration : LibC::SizeT       # Total animation duration sum(delay*iterations)
    tietz_offset : LibC::Long
  end

  type StreamHandler = Image*, Void*, LibC::SizeT -> LibC::UInt

  struct ImageInfo
    compression : CompressionType        # compression method when reading/saving image
    orientation : OrientationType        # orientation setting
    temporary : Bool          # image file to be deleted after read "empemeral:"
    adjoin : Bool             # save images to separate scene files
    affirm : Bool
    antialias : Bool
    size : LibC::Char*              # image generation size
    extract : LibC::Char*           # crop/resize string on image read
    page : LibC::Char*
    scenes : LibC::Char*            # scene numbers that is to be read in
    scene : LibC::SizeT              # starting value for image save numbering
    number_scenes : LibC::SizeT      # total number of images in list - for escapes
    depth : LibC::SizeT              # current read/save depth of images
    interlace : InterlaceType          # interlace for image write
    endian : EndianType             # integer endian order for raw image data
    units : ResolutionType              # denisty pixels/inch or pixel/cm
    quality : LibC::SizeT            # compression quality
    sampling_factor : LibC::Char*   # JPEG write sampling factor
    server_name : LibC::Char*       # X windows server name - display/animate
    font : LibC::Char*              # DUP for draw_info
    texture : LibC::Char*           # montage/display background tile
    density : LibC::Char*           # DUP for image and draw_info
    pointsize : LibC::Double
    fuzz : LibC::Double               # current color fuzz attribute
    alpha_color : PixelInfo        # alpha (frame) color
    background_color : PixelInfo   # user set background color
    border_color : PixelInfo       # user set border color
    transparent_color : PixelInfo  # color for transparent index in color tables
                                   # NB: fill color is only needed in draw_info!
                                   # the same for undercolor (for font drawing)
    dither : Bool             # dither enable-disable
    monochrome : Bool         # read/write pcl,pdf,ps,xps as monocrome image
    colorspace : ColorspaceType
    compose : CompositeOperator
    type : ImageType
    ping : Bool                    # fast read image attributes, not image data
    verbose : Bool                 # verbose output enable/disable
    channel : ChannelType
    options : Void*                # splay tree of global options
    profile : Void*
    synchronize : Bool
    progress_monitor : MagickProgressMonitor
    client_data : Void*
    cache : Void*
    stream : StreamHandler
    file : LibStd::File*
    blob : Void*
    length : LibC::SizeT
    magick : LibC::Char[MagickPathExtent]    # image file format (file magick)
    unique : LibC::Char[MagickPathExtent]    # unique tempory filename - delegates
    filename : LibC::Char[MagickPathExtent]  # filename when reading/writing image
    debug : Bool
    signature : LibC::SizeT
  end

  struct KernelInfo
    type : KernelInfoType
    width : LibC::SizeT
    height : LibC::SizeT
    x : LibC::SSizeT
    y : LibC::SSizeT
    values : LibC::Double*
    minimum : LibC::Double
    maximum : LibC::Double
    negative_range : LibC::Double
    positive_range : LibC::Double
    angle : LibC::Double
    next : KernelInfo*
    signature : LibC::SizeT
  end

  struct MagickInfo
    name : LibC::Char*
    description : LibC::Char*
    version : LibC::Char*
    note : LibC::Char*
    module : LibC::Char*
    image_info : LibC::Char*
    decoder : LibC::Char*
    encoder : LibC::Char*
    magick : LibC::Char*
    client_data : LibC::Char*
    adjoin : LibC::Char
    raw : LibC::Char
    endian_support : LibC::Char
    blob_support : LibC::Char
    seekable_stream : LibC::Char
    format_type : LibC::Char
    thread_support : LibC::Char
    stealth : LibC::Char
    previous : LibC::Char*
    next : LibC::Char*
    signature : LibC::Char
    mime_type : LibC::Char*
    semaphore : LibC::Char*
  end

  struct MagickWand
    id : LibC::SizeT
    name : LibC::Char[MagickPathExtent] # Wand name to use for MagickWand Logs
    images : Image*          # The images in this wand - also the current image
    image_info : ImageInfo*      # Global settings used for images in Wand
    exception : ExceptionInfo*
    insert_before : Bool    # wand set to first image, prepend new images
    image_pending : Bool    # this image is pending Next/Previous Iteration
    debug : Bool            # Log calls to MagickWand library
    signature : LibC::SizeT
  end

  struct MagickPixelPacket
    storage_class : ClassType
    colorspace : ColorspaceType
    matte : Bool
    fuzz : LibC::Double
    depth : LibC::SizeT
    red : MagickRealType
    green : MagickRealType
    blue : MagickRealType
    opacity : MagickRealType
    index : MagickRealType
  end

  struct OffsetInfo
    x : LibC::SSizeT
    y : LibC::SSizeT
  end

  # struct OptionInfo  # REMOVED
  #   mnemonic : LibC::Char*
  #   type : LibC::SSizeT
  #   flags : LibC::SSizeT
  #   stealth : Bool
  # end

  struct PixelInfo
    storage_class : ClassType
    colorspace : ColorspaceType
    alpha_trait : PixelTrait
    fuzz : LibC::Double
    depth : LibC::SizeT
    count : MagickSizeType
    red : MagickRealType
    green : MagickRealType
    blue : MagickRealType
    black : MagickRealType
    alpha : MagickRealType
    index : MagickRealType
  end

  struct PixelPacket
    red : Quantum
    green : Quantum
    blue : Quantum
    opacity : Quantum
  end

  struct PixelWand
    id : LibC::SizeT
    name : LibC::Char[MagickPathExtent];
    exception : ExceptionInfo*
    pixel : PixelInfo
    count : LibC::SizeT
    debug : Bool
    signature : LibC::SizeT
  end

  struct PointInfo
    x : LibC::Double
    y : LibC::Double
  end

  struct PrimaryInfo
    x : LibC::Double
    y : LibC::Double
    z : LibC::Double
  end

  struct PrimitiveInfo
    point : PointInfo
    coordinates : PointInfo
    primitive : PointInfo
    method : PointInfo
    text : PointInfo*
  end

  struct ProfileInfo
    name : LibC::Char*
    length : LibC::Char
    info : LibC::Char*
    signature : LibC::Char
  end

  struct RectangleInfo
    width : LibC::SizeT
    height : LibC::SizeT
    x : LibC::SizeT
    y : LibC::SizeT
  end

  struct SegmentInfo
    x1 : LibC::Double
    y1 : LibC::Double
    x2 : LibC::Double
    y2 : LibC::Double
  end

  struct SemaphoreInfo
    mutex : MagickMutexType
    id : MagickThreadType
    reference_count : LibC::SSizeT
    signature : LibC::SizeT
  end

  struct StopInfo
    color : MagickPixelPacket
    offset : MagickPixelPacket
  end

  struct Timer
    start : LibC::Double
    stop : LibC::Double
    total : LibC::Double
  end

  struct TimerInfo
    user : Timer
    elapsed : Timer
    state : TimerState
    signature : LibC::SizeT
  end

  struct TypeMetric
    pixels_per_em : PointInfo
    ascent : PointInfo
    descent : PointInfo
    width : PointInfo
    height : PointInfo
    max_advance : PointInfo
    underline_position : PointInfo
    underline_thickness : PointInfo
    bounds : PointInfo
    origin : PointInfo
  end
end
