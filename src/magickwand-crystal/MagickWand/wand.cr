lib LibMagick
  fun acquireWandId = AcquireWandId : LibC::SizeT
  fun destroyWandIds = DestroyWandIds : Void
  fun relinquishWandId = RelinquishWandId(id : LibC::SizeT) : Void
end
