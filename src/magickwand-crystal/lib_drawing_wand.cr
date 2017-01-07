require "./types"

lib LibMagick
  # --- drawing-wand --------------------------------------------------------- #
  fun drawGetTextAlignment
    = DrawGetTextAlignment( wand : DrawingWand* ): AlignType

  fun drawGetClipPath
    = DrawGetClipPath( wand : DrawingWand* ): LibC::Char*
  fun drawGetDensity
    = DrawGetDensity( wand : DrawingWand* ): LibC::Char*
  fun drawGetException
    = DrawGetException( wand : DrawingWand*, exceptionType : ExceptionType* ): LibC::Char*
  fun drawGetFont
    = DrawGetFont( wand : DrawingWand* ): LibC::Char*
  fun drawGetFontFamily
    = DrawGetFontFamily( wand : DrawingWand* ): LibC::Char*
  fun drawGetTextEncoding
    = DrawGetTextEncoding( wand : DrawingWand* ): LibC::Char*
  fun drawGetVectorGraphics
    = DrawGetVectorGraphics( wand : DrawingWand* ): LibC::Char*

  fun drawGetClipUnits
    = DrawGetClipUnits( wand : DrawingWand* ): ClipPathUnits

  fun drawGetTextDecoration
    = DrawGetTextDecoration( wand : DrawingWand* ): DecorationType

  fun drawGetTextDirection
    = DrawGetTextDirection( wand : DrawingWand* ): DirectionType

  fun drawGetFillOpacity
    = DrawGetFillOpacity( wand : DrawingWand* ): LibC::Double
  fun drawGetFontSize
    = DrawGetFontSize( wand : DrawingWand* ): LibC::Double
  fun drawGetOpacity
    = DrawGetOpacity( wand : DrawingWand* ): LibC::Double
  fun drawGetStrokeDashArray
    = DrawGetStrokeDashArray( wand : DrawingWand*, s : LibC::SizeT* ): LibC::Double*
  fun drawGetStrokeDashOffset
    = DrawGetStrokeDashOffset( wand : DrawingWand* ): LibC::Double
  fun drawGetStrokeOpacity
    = DrawGetStrokeOpacity( wand : DrawingWand* ): LibC::Double
  fun drawGetStrokeWidth
    = DrawGetStrokeWidth( wand : DrawingWand* ): LibC::Double
  fun drawGetTextKerning
    = DrawGetTextKerning( wand : DrawingWand* ): LibC::Double
  fun drawGetTextInterlineSpacing
    = DrawGetTextInterlineSpacing( wand : DrawingWand* ): LibC::Double
  fun drawGetTextInterwordSpacing
    = DrawGetTextInterwordSpacing( wand : DrawingWand* ): LibC::Double

  fun peekDrawingWand
    = PeekDrawingWand( wand : DrawingWand* ): DrawInfo*

  fun acquireDrawingWand
    = AcquireDrawingWand( drawInfo : DrawInfo*, image : Image* ): DrawingWand*
  fun cloneDrawingWand
    = CloneDrawingWand( wand : DrawingWand* ): DrawingWand*
  fun destroyDrawingWand
    = DestroyDrawingWand( wand : DrawingWand* ): DrawingWand*
  fun newDrawingWand
    = NewDrawingWand(): DrawingWand*

  # fun drawCloneExceptionInfo  # REMOVED
  #   = DrawCloneExceptionInfo( wand : DrawingWand* ): ExceptionInfo*

  fun drawGetExceptionType
    = DrawGetExceptionType( wand : DrawingWand* ): ExceptionType

  fun drawGetClipRule
    = DrawGetClipRule( wand : DrawingWand* ): FillRule
  fun drawGetFillRule
    = DrawGetFillRule( wand : DrawingWand* ): FillRule

  fun drawGetGravity
    = DrawGetGravity( wand : DrawingWand* ): GravityType

  fun drawGetStrokeLineCap
    = DrawGetStrokeLineCap( wand : DrawingWand* ): LineCap

  fun drawGetStrokeLineJoin
    = DrawGetStrokeLineJoin( wand : DrawingWand* ): LineJoin

  fun drawClearException
    = DrawClearException( wand : DrawingWand* ): Bool
  fun drawComposite
    = DrawComposite( wand1 : DrawingWand*, compositeOperator : CompositeOperator, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double, wand2 : MagickWand* ): Bool
  fun drawGetFontResolution
    = DrawGetFontResolution( wand : DrawingWand*, dp1 : LibC::Double*, dp2 : LibC::Double* ): Bool
  fun drawGetStrokeAntialias
    = DrawGetStrokeAntialias( wand : DrawingWand* ): Bool
  fun drawGetTextAntialias
    = DrawGetTextAntialias( wand : DrawingWand* ): Bool
  fun drawPopPattern
    = DrawPopPattern( wand : DrawingWand* ): Bool
  fun drawPushPattern
    = DrawPushPattern( wand : DrawingWand*, pc : LibC::Char*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double ): Bool
  fun drawRender
    = DrawRender( wand : DrawingWand* ): Bool
  fun drawSetClipPath
    = DrawSetClipPath( wand : DrawingWand*, pc : LibC::Char* ): Bool
  fun drawSetDensity
    = DrawSetDensity( wand : DrawingWand*, pc : LibC::Char* ): Bool
  fun drawSetFillPatternURL
    = DrawSetFillPatternURL( wand : DrawingWand*, pc : LibC::Char* ): Bool
  fun drawSetFont
    = DrawSetFont( wand : DrawingWand*, pc : LibC::Char* ): Bool
  fun drawSetFontFamily
    = DrawSetFontFamily( wand : DrawingWand*, pc : LibC::Char* ): Bool
  fun drawSetFontResolution
    = DrawSetFontResolution( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double ): Bool
  fun drawSetStrokeDashArray
    = DrawSetStrokeDashArray( wand : DrawingWand*, s : LibC::SizeT, dp : LibC::Double* ): Bool
  fun drawSetStrokePatternURL
    = DrawSetStrokePatternURL( wand : DrawingWand*, pc : LibC::Char* ): Bool
  fun drawSetVectorGraphics
    = DrawSetVectorGraphics( wand : DrawingWand*, pc : LibC::Char* ): Bool
  fun isDrawingWand
    = IsDrawingWand( wand : DrawingWand* ): Bool
  fun popDrawingWand
    = PopDrawingWand( wand : DrawingWand* ): Bool
  fun pushDrawingWand
    = PushDrawingWand( wand : DrawingWand* ): Bool

  fun drawGetFontStretch
    = DrawGetFontStretch( wand : DrawingWand* ): StretchType

  fun drawGetFontStyle
    = DrawGetFontStyle( wand : DrawingWand* ): StyleType

  fun drawGetFontWeight
    = DrawGetFontWeight( wand : DrawingWand* ): LibC::SizeT
  fun drawGetStrokeMiterLimit
    = DrawGetStrokeMiterLimit( wand : DrawingWand* ): LibC::SizeT

  fun clearDrawingWand
    = ClearDrawingWand( wand : DrawingWand*  ): Void
  fun drawAffine
    = DrawAffine( wand : DrawingWand*, affineMatrix : AffineMatrix* ): Void
  # fun drawAlpha  # REMOVED
  #   = DrawAlpha( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, paintMethod : PaintMethod ): Void
  fun drawAnnotation
    = DrawAnnotation( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, cp : LibC::UChar* ): Void
  fun drawArc
    = DrawArc( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double, d5 : LibC::Double, d6 : LibC::Double ): Void
  fun drawBezier
    = DrawBezier( wand : DrawingWand*, s : LibC::SizeT, pointInfo : PointInfo* ): Void
  fun drawGetBorderColor
    = DrawGetBorderColor( wand1 : DrawingWand*, wand2 : PixelWand* ): Void
  fun drawCircle
    = DrawCircle( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double ): Void
  fun drawColor
    = DrawColor( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, paintMethod : PaintMethod ): Void
  fun drawComment
    = DrawComment( wand : DrawingWand*, cp : LibC::Char* ): Void
  fun drawEllipse
    = DrawEllipse( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double, d5 : LibC::Double, d6 : LibC::Double ): Void
  fun drawGetFillColor
    = DrawGetFillColor( wand1 : DrawingWand*, wand2 : PixelWand* ): Void
  fun drawGetStrokeColor
    = DrawGetStrokeColor( wand1 : DrawingWand*, wand2 : PixelWand* ): Void
  fun drawSetTextKerning
    = DrawSetTextKerning( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawSetTextInterlineSpacing
    = DrawSetTextInterlineSpacing( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawSetTextInterwordSpacing
    = DrawSetTextInterwordSpacing( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawGetTextUnderColor
    = DrawGetTextUnderColor( wand1 : DrawingWand*, wand2 : PixelWand* ): Void
  fun drawLine
    = DrawLine( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double ): Void
  fun drawMatte
    = DrawMatte( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, paintMethod : PaintMethod ): Void
  fun drawPathClose
    = DrawPathClose( wand : DrawingWand* ): Void
  fun drawPathCurveToAbsolute
    = DrawPathCurveToAbsolute( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double, d5 : LibC::Double, d6 : LibC::Double ): Void
  fun drawPathCurveToRelative
    = DrawPathCurveToRelative( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double, d5 : LibC::Double, d6 : LibC::Double ): Void
  fun drawPathCurveToQuadraticBezierAbsolute
    = DrawPathCurveToQuadraticBezierAbsolute( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double ): Void
  fun drawPathCurveToQuadraticBezierRelative
    = DrawPathCurveToQuadraticBezierRelative( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double ): Void
  fun drawPathCurveToQuadraticBezierSmoothAbsolute
    = DrawPathCurveToQuadraticBezierSmoothAbsolute( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double ): Void
  fun drawPathCurveToQuadraticBezierSmoothRelative
    = DrawPathCurveToQuadraticBezierSmoothRelative( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double ): Void
  fun drawPathCurveToSmoothAbsolute
    = DrawPathCurveToSmoothAbsolute( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double ): Void
  fun drawPathCurveToSmoothRelative
    = DrawPathCurveToSmoothRelative( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double ): Void
  fun drawPathEllipticArcAbsolute
    = DrawPathEllipticArcAbsolute( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, b1 : Bool, b2 : Bool, d4 : LibC::Double, d5 : LibC::Double ): Void
  fun drawPathEllipticArcRelative
    = DrawPathEllipticArcRelative( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, b1 : Bool, b2 : Bool, d4 : LibC::Double, d5 : LibC::Double ): Void
  fun drawPathFinish
    = DrawPathFinish( wand : DrawingWand* ): Void
  fun drawPathLineToAbsolute
    = DrawPathLineToAbsolute( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double ): Void
  fun drawPathLineToRelative
    = DrawPathLineToRelative( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double ): Void
  fun drawPathLineToHorizontalAbsolute
    = DrawPathLineToHorizontalAbsolute( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawPathLineToHorizontalRelative
    = DrawPathLineToHorizontalRelative( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawPathLineToVerticalAbsolute
    = DrawPathLineToVerticalAbsolute( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawPathLineToVerticalRelative
    = DrawPathLineToVerticalRelative( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawPathMoveToAbsolute
    = DrawPathMoveToAbsolute( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double ): Void
  fun drawPathMoveToRelative
    = DrawPathMoveToRelative( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double ): Void
  fun drawPathStart
    = DrawPathStart( wand : DrawingWand* ): Void
  fun drawPoint
    = DrawPoint( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double ): Void
  fun drawPolygon
    = DrawPolygon( wand : DrawingWand*, s : LibC::SizeT, pointInfo : PointInfo* ): Void
  fun drawPolyline
    = DrawPolyline( wand : DrawingWand*, s : LibC::SizeT, pointInfo : PointInfo* ): Void
  fun drawPopClipPath
    = DrawPopClipPath( wand : DrawingWand* ): Void
  fun drawPopDefs
    = DrawPopDefs( wand : DrawingWand* ): Void
  fun drawPushClipPath
    = DrawPushClipPath( wand : DrawingWand*, cp : LibC::Char* ): Void
  fun drawPushDefs
    = DrawPushDefs( wand : DrawingWand* ): Void
  fun drawRectangle
    = DrawRectangle( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double ): Void
  fun drawResetVectorGraphics
    = DrawResetVectorGraphics( wand : DrawingWand*  ): Void
  fun drawRotate
    = DrawRotate( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawRoundRectangle
    = DrawRoundRectangle( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double, d4 : LibC::Double, d5 : LibC::Double, d6 : LibC::Double ): Void
  fun drawScale
    = DrawScale( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double ): Void
  fun drawSetBorderColor
    = DrawSetBorderColor( wand1 : DrawingWand*, wand2 : PixelWand* ): Void
  fun drawSetClipRule
    = DrawSetClipRule( wand : DrawingWand*, fillRule : FillRule ): Void
  fun drawSetClipUnits
    = DrawSetClipUnits( wand : DrawingWand*, clipPathUnits : ClipPathUnits ): Void
  fun drawSetFillColor
    = DrawSetFillColor( wand1 : DrawingWand*, wand2 : PixelWand* ): Void
  fun drawSetFillOpacity
    = DrawSetFillOpacity( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawSetFillRule
    = DrawSetFillRule( wand : DrawingWand*, fillRule : FillRule ): Void
  fun drawSetFontSize
    = DrawSetFontSize( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawSetFontStretch
    = DrawSetFontStretch( wand : DrawingWand*, stretchType : StretchType ): Void
  fun drawSetFontStyle
    = DrawSetFontStyle( wand : DrawingWand*, styleType : StyleType ): Void
  fun drawSetFontWeight
    = DrawSetFontWeight( wand : DrawingWand*, s : LibC::SizeT ): Void
  fun drawSetGravity
    = DrawSetGravity( wand : DrawingWand*, gravityType : GravityType ): Void
  fun drawSetOpacity
    = DrawSetOpacity( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawSetStrokeAntialias
    = DrawSetStrokeAntialias( wand : DrawingWand*, b : Bool ): Void
  fun drawSetStrokeColor
    = DrawSetStrokeColor( wand : DrawingWand*, wand2 : PixelWand* ): Void
  fun drawSetStrokeDashOffset
    = DrawSetStrokeDashOffset( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawSetStrokeLineCap
    = DrawSetStrokeLineCap( wand : DrawingWand*, lineCap : LineCap ): Void
  fun drawSetStrokeLineJoin
    = DrawSetStrokeLineJoin( wand : DrawingWand*, lineJoin : LineJoin ): Void
  fun drawSetStrokeMiterLimit
    = DrawSetStrokeMiterLimit( wand : DrawingWand*, s : LibC::SizeT ): Void
  fun drawSetStrokeOpacity
    = DrawSetStrokeOpacity( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawSetStrokeWidth
    = DrawSetStrokeWidth( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawSetTextAlignment
    = DrawSetTextAlignment( wand : DrawingWand*, alignType : AlignType ): Void
  fun drawSetTextAntialias
    = DrawSetTextAntialias( wand : DrawingWand*, b : Bool ): Void
  fun drawSetTextDecoration
    = DrawSetTextDecoration( wand : DrawingWand*, decorationType : DecorationType ): Void
  fun drawSetTextDirection
    = DrawSetTextDirection( wand : DrawingWand*, directionType : DirectionType ): Void
  fun drawSetTextEncoding
    = DrawSetTextEncoding( wand : DrawingWand*, pc : LibC::Char* ): Void
  fun drawSetTextUnderColor
    = DrawSetTextUnderColor( wand1 : DrawingWand*, wand2 : PixelWand* ): Void
  fun drawSetViewbox
    = DrawSetViewbox( wand : DrawingWand*, ss1 : LibC::SSizeT, ss2 : LibC::SSizeT, ss3 : LibC::SSizeT, ss4 : LibC::SSizeT ): Void
  fun drawSkewX
    = DrawSkewX( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawSkewY
    = DrawSkewY( wand : DrawingWand*, d : LibC::Double ): Void
  fun drawTranslate
    = DrawTranslate( wand : DrawingWand*, d1 : LibC::Double, d2 : LibC::Double ): Void
end
