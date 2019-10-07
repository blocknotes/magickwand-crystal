lib LibMagick
  fun getClientName = GetClientName : LibC::Char*
  fun getClientPath = GetClientPath : LibC::Char*
  fun setClientName = SetClientName(name : LibC::Char*) : LibC::Char*
  fun setClientPath = SetClientPath(path : LibC::Char*) : LibC::Char*
end
