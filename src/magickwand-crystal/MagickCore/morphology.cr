lib LibMagick
  fun acquireKernelInfo = AcquireKernelInfo(kernel_string : LibC::Char*, exception : ExceptionInfo*) : KernelInfo*
  fun acquireKernelBuiltIn = AcquireKernelBuiltIn(type : KernelInfoType, args : GeometryInfo*, exception : ExceptionInfo*) : KernelInfo*
  fun cloneKernelInfo = CloneKernelInfo(kernel : KernelInfo*) : KernelInfo*
  fun destroyKernelInfo = DestroyKernelInfo(kernel : KernelInfo*) : KernelInfo*
  fun morphologyImage = MorphologyImage(image : Image*, method : MorphologyMethod, iterations : LibC::SSizeT, kernel : KernelInfo*, exception : ExceptionInfo*) : Image*
  fun scaleGeometryKernelInfo = ScaleGeometryKernelInfo(kernel : KernelInfo*, geometry : LibC::Char*) : Void
  fun scaleKernelInfo = ScaleKernelInfo(kernel : KernelInfo*, scaling_factor : LibC::Double, normalize_flags : GeometryFlags) : Void
  fun unityAddKernelInfo = UnityAddKernelInfo(kernel : KernelInfo*, scale : LibC::Double) : Void
end
