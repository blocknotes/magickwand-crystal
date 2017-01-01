lib LibMagick
  # --- option ----------------------------------------------------------------#
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

  struct OptionInfo
    mnemonic: LibC::Char*
    type : LibC::SSizeT
    flags : LibC::SSizeT
    stealth : Bool
  end

  fun getCommandOptions
    = GetCommandOptions( commandOption : CommandOption ): LibC::Char**
  fun getNextImageOption
    = GetNextImageOption( imageInfo : ImageInfo* ): LibC::Char*
  fun removeImageOption
    = RemoveImageOption( imageInfo : ImageInfo*, pc : LibC::Char* ): LibC::Char*

  fun commandOptionToMnemonic
    = CommandOptionToMnemonic( commandOption : CommandOption, ss : LibC::SSizeT ): LibC::Char*
  fun getImageOption
    = GetImageOption( imageInfo : ImageInfo*, pc : LibC::Char* ): LibC::Char*

  fun cloneImageOptions
    = CloneImageOptions( imageInfo : ImageInfo*, imageInfo2 : ImageInfo* ): Bool
  fun defineImageOption
    = DefineImageOption( imageInfo : ImageInfo*, pc : LibC::Char* ): Bool
  fun deleteImageOption
    = DeleteImageOption( imageInfo : ImageInfo*, pc : LibC::Char* ): Bool
  fun isCommandOption
    = IsCommandOption( pc : LibC::Char* ): Bool
  fun isOptionMember
    = IsOptionMember( pc : LibC::Char*, pc : LibC::Char* ): Bool
  fun listCommandOptions
    = ListCommandOptions( file : LibStd::FilePtr, commandOption : CommandOption, exceptionInfo : ExceptionInfo* ): Bool
  fun setImageOption
    = SetImageOption( imageInfo : ImageInfo*, pc : LibC::Char*, pc : LibC::Char* ): Bool

  fun getCommandOptionFlags
    = GetCommandOptionFlags( commandOption : CommandOption, b : Bool, pc : LibC::Char* ): LibC::SSizeT
  fun parseChannelOption
    = ParseChannelOption( pc : LibC::Char* ): LibC::SSizeT
  fun parsePixelChannelOption
    = ParsePixelChannelOption( pc : LibC::Char* ): LibC::SSizeT
  fun parseCommandOption
    = ParseCommandOption( commandOption : CommandOption, b : Bool, pc : LibC::Char* ): LibC::SSizeT

  fun destroyImageOptions
    = DestroyImageOptions( imageInfo : ImageInfo* ): Void
  fun resetImageOptions
    = ResetImageOptions( imageInfo : ImageInfo* ): Void
  fun resetImageOptionIterator
    = ResetImageOptionIterator( imageInfo : ImageInfo* ): Void

  fun getCommandOptionInfo
    = GetCommandOptionInfo( pc : LibC::Char* ): OptionInfo*
end
