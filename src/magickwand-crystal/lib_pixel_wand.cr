require "./types"

@[Link("MagickWand")]
lib LibMagick
  # --- pixel-wand ------------------------------------------------------------#
  # char* functions
  fun pixelGetColorAsNormalizedString
    = PixelGetColorAsNormalizedString( wand : PixelWand* ): LibC::Char*
  fun pixelGetColorAsString
    = PixelGetColorAsString( wand : PixelWand* ): LibC::Char*
  fun pixelGetException
    = PixelGetException( wand : PixelWand*, exceptionType : ExceptionType* ): LibC::Char*

  # double functions
  fun pixelGetAlpha
    = PixelGetAlpha( wand : PixelWand* ): LibC::Double
  fun pixelGetBlack
    = PixelGetBlack( wand : PixelWand* ): LibC::Double
  fun pixelGetBlue
    = PixelGetBlue( wand : PixelWand* ): LibC::Double
  fun pixelGetCyan
    = PixelGetCyan( wand : PixelWand* ): LibC::Double
  fun pixelGetFuzz
    = PixelGetFuzz( wand : PixelWand* ): LibC::Double
  fun pixelGetGreen
    = PixelGetGreen( wand : PixelWand* ): LibC::Double
  fun pixelGetMagenta
    = PixelGetMagenta( wand : PixelWand* ): LibC::Double
  fun pixelGetAlpha
    = PixelGetAlpha( wand : PixelWand* ): LibC::Double
  fun pixelGetRed
    = PixelGetRed( wand : PixelWand* ): LibC::Double
  fun pixelGetYellow
    = PixelGetYellow( wand : PixelWand* ): LibC::Double

  fun pixelGetExceptionType
    = PixelGetExceptionType( wand : PixelWand* ): ExceptionType

  # bool functions
  fun isPixelWand
    = IsPixelWand( wand : PixelWand* ): Bool
  fun isPixelWandSimilar
    = IsPixelWandSimilar( wand1 : PixelWand*, wand2 : PixelWand *, d : LibC::Double ): Bool
  fun pixelClearException
    = PixelClearException( wand : PixelWand* ): Bool
  fun pixelSetColor
    = PixelSetColor( wand : PixelWand*, pc : LibC::Char* ): Bool

  fun pixelGetPixel
    = PixelGetPixel( wand : PixelWand* ): PixelInfo

  # PixelWand* functions
  fun clonePixelWand
    = ClonePixelWand( wand : PixelWand* ): PixelWand*
  fun clonePixelWands
    = ClonePixelWands( wands : PixelWand**, s : LibC::SizeT ): PixelWand**
  fun destroyPixelWand
    = DestroyPixelWand( wand : PixelWand* ): PixelWand*
  fun destroyPixelWands
    = DestroyPixelWands( wands : PixelWand**, s : LibC::SizeT ): PixelWand**
  fun newPixelWand
    = NewPixelWand(): PixelWand*
  fun newPixelWands
    = NewPixelWands( s : LibC::SizeT ): PixelWand**

  fun pixelGetAlphaQuantum
    = PixelGetAlphaQuantum( wand : PixelWand* ): Quantum
  fun pixelGetBlackQuantum
    = PixelGetBlackQuantum( wand : PixelWand* ): Quantum
  fun pixelGetBlueQuantum
    = PixelGetBlueQuantum( wand : PixelWand* ): Quantum
  fun pixelGetCyanQuantum
    = PixelGetCyanQuantum( wand : PixelWand* ): Quantum
  fun pixelGetGreenQuantum
    = PixelGetGreenQuantum( wand : PixelWand* ): Quantum
  fun pixelGetIndex
    = PixelGetIndex( wand : PixelWand* ): Quantum
  fun pixelGetMagentaQuantum
    = PixelGetMagentaQuantum( wand : PixelWand* ): Quantum
  fun pixelGetAlphaQuantum
    = PixelGetAlphaQuantum( wand : PixelWand* ): Quantum
  fun pixelGetRedQuantum
    = PixelGetRedQuantum( wand : PixelWand* ): Quantum
  fun pixelGetYellowQuantum
    = PixelGetYellowQuantum( wand : PixelWand* ): Quantum

  fun pixelGetColorCount
    = PixelGetColorCount( wand : PixelWand* ): LibC::SizeT

  # void functions
  fun clearPixelWand
    = ClearPixelWand( wand : PixelWand* ): Void
  fun pixelGetHSL
    = PixelGetHSL( wand : PixelWand*, dp1 : LibC::Double*, dp2 : LibC::Double*, dp3 : LibC::Double* ): Void
  fun pixelGetMagickColor
    = PixelGetMagickColor( wand : PixelWand*, pixelInfo : PixelInfo* ): Void
  fun pixelGetQuantumPacket
    = PixelGetQuantumPacket( wand : PixelWand*, pixelInfo : PixelInfo* ): Void
  fun pixelGetQuantumPixel
    = PixelGetQuantumPixel( image : Image*, wand : PixelWand*, quantum : Quantum* ): Void
  fun pixelSetAlpha
    = PixelSetAlpha( wand : PixelWand*, d : LibC::Double ): Void
  fun pixelSetAlphaQuantum
    = PixelSetAlphaQuantum( wand : PixelWand*, quantum : Quantum* ): Void
  fun pixelSetBlack
    = PixelSetBlack( wand : PixelWand*, d : LibC::Double ): Void
  fun pixelSetBlackQuantum
    = PixelSetBlackQuantum( wand : PixelWand*, quantum : Quantum* ): Void
  fun pixelSetBlue
    = PixelSetBlue( wand : PixelWand*, d : LibC::Double ): Void
  fun pixelSetBlueQuantum
    = PixelSetBlueQuantum( wand : PixelWand*, quantum : Quantum* ): Void
  fun pixelSetColorFromWand
    = PixelSetColorFromWand( wand : PixelWand*, wand2 : PixelWand* ): Void
  fun pixelSetColorCount
    = PixelSetColorCount( wand : PixelWand*, s : LibC::SizeT ): Void
  fun pixelSetCyan
    = PixelSetCyan( wand : PixelWand*, d : LibC::Double ): Void
  fun pixelSetCyanQuantum
    = PixelSetCyanQuantum( wand : PixelWand*, quantum : Quantum* ): Void
  fun pixelSetFuzz
    = PixelSetFuzz( wand : PixelWand*, d : LibC::Double ): Void
  fun pixelSetGreen
    = PixelSetGreen( wand : PixelWand*, d : LibC::Double ): Void
  fun pixelSetGreenQuantum
    = PixelSetGreenQuantum( wand : PixelWand*, quantum : Quantum* ): Void
  fun pixelSetHSL
    = PixelSetHSL( wand : PixelWand*, d1 : LibC::Double, d2 : LibC::Double, d3 : LibC::Double ): Void
  fun pixelSetIndex
    = PixelSetIndex( wand : PixelWand*, quantum : Quantum* ): Void
  fun pixelSetMagenta
    = PixelSetMagenta( wand : PixelWand*, d : LibC::Double ): Void
  fun pixelSetMagentaQuantum
    = PixelSetMagentaQuantum( wand : PixelWand*, quantum : Quantum* ): Void
  fun pixelSetPixelColor
    = PixelSetPixelColor( wand : PixelWand*, pixelInfo : PixelInfo* ): Void
  fun pixelSetAlpha
    = PixelSetAlpha( wand : PixelWand*, d : LibC::Double ): Void
  fun pixelSetAlphaQuantum
    = PixelSetAlphaQuantum( wand : PixelWand*, quantum : Quantum* ): Void
  fun pixelSetPixelColor
    = PixelSetPixelColor( wand : PixelWand*, pixelInfo : PixelInfo* ): Void
  fun pixelSetQuantumPixel
    = PixelSetQuantumPixel( image : Image*, quantum : Quantum*, wand : PixelWand* ): Void
  fun pixelSetRed
    = PixelSetRed( wand : PixelWand*, d : LibC::Double ): Void
  fun pixelSetRedQuantum
    = PixelSetRedQuantum( wand : PixelWand*, quantum : Quantum* ): Void
  fun pixelSetYellow
    = PixelSetYellow( wand : PixelWand*, d : LibC::Double ): Void
  fun pixelSetYellowQuantum
    = PixelSetYellowQuantum( wand : PixelWand*, quantum : Quantum* ): Void
end
