require "./types"

lib LibMagick
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
    = ListCommandOptions( file : LibStd::File*, commandOption : CommandOption, exceptionInfo : ExceptionInfo* ): Bool
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
