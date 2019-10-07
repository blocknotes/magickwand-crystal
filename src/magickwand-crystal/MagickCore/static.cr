lib LibMagick
  fun invokeStaticImageFilter = InvokeStaticImageFilter(tag : LibC::Char*, image : Image**, argc : LibC::Int, argv : LibC::Char**, exception : ExceptionInfo*) : Bool
  fun registerStaticModule = RegisterStaticModule(module : LibC::Char*, exception : ExceptionInfo*) : Bool
  fun registerStaticModules = RegisterStaticModules : Void
  fun unregisterStaticModule = UnregisterStaticModule(module : LibC::Char*) : Bool
  fun unregisterStaticModules = UnregisterStaticModules : Void
end
