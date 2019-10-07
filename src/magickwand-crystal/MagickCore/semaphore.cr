lib LibMagick
  fun activateSemaphoreInfo = ActivateSemaphoreInfo(semaphore_info : SemaphoreInfo**) : Void
  fun acquireSemaphoreInfo = AcquireSemaphoreInfo : SemaphoreInfo*
  fun lockSemaphoreInfo = LockSemaphoreInfo(semaphore_info : SemaphoreInfo*) : Void
  fun relinquishSemaphoreInfo = RelinquishSemaphoreInfo(semaphore_info : SemaphoreInfo**) : Void
  fun unlockSemaphoreInfo = UnlockSemaphoreInfo(semaphore_info : SemaphoreInfo*) : Void
end
