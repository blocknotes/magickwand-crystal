lib LibMagick
  fun annotateImage = AnnotateImage(image : Image*, draw_info : DrawInfo*, exception : ExceptionInfo*) : Bool
  fun formatMagickCaption = FormatMagickCaption(image : Image*, draw_info : DrawInfo*, split : Bool, metrics : TypeMetric*, caption : LibC::Char**, exception : ExceptionInfo*) : LibC::SSizeT
  fun getMultilineTypeMetrics = GetMultilineTypeMetrics(image : Image*, draw_info : DrawInfo*, metrics : TypeMetric*, exception : ExceptionInfo*) : Bool
  fun getTypeMetrics = GetTypeMetrics(image : Image*, draw_info : DrawInfo*, metrics : TypeMetric*, exception : ExceptionInfo*) : Bool
end
