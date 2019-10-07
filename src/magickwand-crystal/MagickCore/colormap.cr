lib LibMagick
  fun acquireImageColormap = AcquireImageColormap(image : Image*, colors : LibC::SizeT, exception : ExceptionInfo*) : Bool
  fun cycleColormapImage = CycleColormapImage(image : Image*, displace : LibC::SSizeT, exception : ExceptionInfo*) : Bool
  fun sortColormapByIntensity = SortColormapByIntensity(image : Image*, exception : ExceptionInfo*) : Bool
end
