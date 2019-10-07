# ---------------------------------------------------------------------------- #
# Example:     kemal
# Author:      Mat
# Description: Generate an image on the fly in Kemal
# ---------------------------------------------------------------------------- #

require "kemal"
require "../src/magickwand-crystal"

get "/" do |env|
  env.response.content_type = "image/jpeg"
  LibMagick.magickWandGenesis
  wand = LibMagick.newMagickWand
  p_wand = LibMagick.newPixelWand
  LibMagick.pixelSetColor p_wand, "orange"
  LibMagick.magickNewImage wand, 640, 480, p_wand
  LibMagick.magickSetImageFormat wand, "JPEG"
  buffer = LibMagick.magickGetImageBlob wand, out length
  slice = Slice(UInt8).new(buffer, length)
  LibMagick.destroyPixelWand p_wand
  LibMagick.destroyMagickWand wand
  LibMagick.magickWandTerminus
  io = IO::Memory.new
  io.write slice
  io.to_s
end

Kemal.run
