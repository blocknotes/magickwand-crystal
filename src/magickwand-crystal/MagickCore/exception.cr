lib LibMagick
  fun acquireExceptionInfo = AcquireExceptionInfo : ExceptionInfo*
  fun clearMagickException = ClearMagickException(exception : ExceptionInfo*) : Void
  fun catchException = CatchException(exception : ExceptionInfo*) : Void
  fun cloneExceptionInfo = CloneExceptionInfo(exception : ExceptionInfo*) : ExceptionInfo*
  fun destroyExceptionInfo = DestroyExceptionInfo(exception : ExceptionInfo*) : ExceptionInfo*
  fun getExceptionMessage = GetExceptionMessage(error : LibC::Int) : LibC::Char*
  fun getLocaleExceptionMessage = GetLocaleExceptionMessage(severity : ExceptionType, tag : LibC::Char*) : LibC::Char*
  fun inheritException = InheritException(exception : ExceptionInfo*, relative : ExceptionInfo*) : Void
  fun magickError = MagickError(error : ExceptionType, reason : LibC::Char*, description : LibC::Char*) : Void
  fun magickFatalError = MagickFatalError(error : ExceptionType, reason : LibC::Char*, description : LibC::Char*) : Void
  fun magickWarning = MagickWarning(warning : ExceptionType, reason : LibC::Char*, description : LibC::Char*) : Void
  fun setErrorHandler = SetErrorHandler(handler : ErrorHandler) : ErrorHandler
  fun setFatalErrorHandler = SetFatalErrorHandler(handler : FatalErrorHandler) : FatalErrorHandler
  fun setWarningHandler = SetWarningHandler(handler : WarningHandler) : WarningHandler
  fun throwException = ThrowException(exception : ExceptionInfo*, severity : ExceptionType, reason : LibC::Char*, description : LibC::Char*) : Bool
  # fun throwMagickExceptionList = ThrowMagickExceptionList(exception : ExceptionInfo*, module : LibC::Char*, function : LibC::Char*, line : LibC::SizeT, severity : ExceptionType, tag : LibC::Char*, format : LibC::Char*, operands : ...) : Bool
  fun throwMagickException = ThrowMagickException(exception : ExceptionInfo*, module : LibC::Char*, function : LibC::Char*, line : LibC::SizeT, severity : ExceptionType, tag : LibC::Char*, format : LibC::Char*) : Bool
end
