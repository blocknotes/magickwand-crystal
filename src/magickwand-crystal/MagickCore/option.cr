lib LibMagick
  fun cloneImageOptions = CloneImageOptions(image_info : ImageInfo*, clone_info : ImageInfo*) : Bool
  fun defineImageOption = DefineImageOption(image_info : ImageInfo*, option : LibC::Char*) : Bool
  fun deleteImageOption = DeleteImageOption(image_info : ImageInfo*, option : LibC::Char*) : Bool
  fun destroyImageOptions = DestroyImageOptions(image_info : ImageInfo*) : Void
  fun getImageOption = GetImageOption(image_info : ImageInfo*, option : LibC::Char*) : LibC::Char*
  fun getCommandOptionFlags = GetCommandOptionFlags(option : CommandOption, list : Bool, options : LibC::Char*) : LibC::SSizeT
  fun getCommandOptionInfo = GetCommandOptionInfo(option : LibC::Char*) : OptionInfo*
  fun getCommandOptions = GetCommandOptions(option : CommandOption) : LibC::Char**
  fun getNextImageOption = GetNextImageOption(image_info : ImageInfo*) : LibC::Char*
  fun isCommandOption = IsCommandOption(option : LibC::Char*) : Bool
  fun commandOptionToMnemonic = CommandOptionToMnemonic(option : CommandOption, type : LibC::SSizeT) : LibC::Char*
  fun isOptionMember = IsOptionMember(option : LibC::Char*, options : LibC::Char*) : Bool
  fun listCommandOptions = ListCommandOptions(file : LibStd::File*, option : CommandOption, magick_unused : ExceptionInfo*) : Bool
  fun parseChannelOption = ParseChannelOption(channels : LibC::Char*) : LibC::SSizeT
  fun parseCommandOption = ParseCommandOption(option : CommandOption, list : Bool, options : LibC::Char*) : LibC::SSizeT
  fun parsePixelChannelOption = ParsePixelChannelOption(channels : LibC::Char*) : LibC::SSizeT
  fun removeImageOption = RemoveImageOption(image_info : ImageInfo*, option : LibC::Char*) : LibC::Char*
  fun resetImageOptions = ResetImageOptions(image_info : ImageInfo*) : Void
  fun resetImageOptionIterator = ResetImageOptionIterator(image_info : ImageInfo*) : Void
  fun setImageOption = SetImageOption(image_info : ImageInfo*, option : LibC::Char*, value : LibC::Char*) : Bool
end
