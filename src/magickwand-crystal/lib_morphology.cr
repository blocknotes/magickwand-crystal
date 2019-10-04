require "./types"

lib LibMagick
  fun acquireKernelInfo = AcquireKernelInfo(cp : LibC::Char*, exceptionInfo : ExceptionInfo*) : KernelInfo*
  fun acquireKernelBuiltIn = AcquireKernelBuiltIn(kernelInfoType : KernelInfoType, geometryInfo : GeometryInfo*, exceptionInfo : ExceptionInfo*) : KernelInfo*
  fun cloneKernelInfo = CloneKernelInfo(kernelInfo : KernelInfo*) : KernelInfo*
  fun destroyKernelInfo = DestroyKernelInfo(kernelInfo : KernelInfo*) : KernelInfo*
  fun morphologyImage = MorphologyImage(image : Image*, morphologyMethod : MorphologyMethod, ss : LibC::SSizeT, kernelInfo : KernelInfo*, exceptionInfo : ExceptionInfo*) : Image*
  fun scaleGeometryKernelInfo = ScaleGeometryKernelInfo(kernelInfo : KernelInfo*, cp : LibC::Char*) : Void
  fun scaleKernelInfo = ScaleKernelInfo(kernelInfo : KernelInfo*, d : LibC::Double, geometryFlags : GeometryFlags) : Void
  fun unityAddKernelInfo = UnityAddKernelInfo(kernelInfo : KernelInfo*, d : LibC::Double) : Void
end
