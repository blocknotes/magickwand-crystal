# ---------------------------------------------------------------------------- #
# Example:     info
# Author:      Mat
# Description: Get info from an image
# ---------------------------------------------------------------------------- #
require "magickwand-crystal"

LibMagick.magickWandGenesis
wand = LibMagick.newMagickWand
if LibMagick.magickReadImage( wand, "test.png" )
  # char* functions
  STDOUT << "- MagickGetImageFilename: " << String.new( LibMagick.magickGetImageFilename( wand ) ) << "\n"
  STDOUT << "- MagickGetImageFormat: " << String.new( LibMagick.magickGetImageFormat( wand ) ) << "\n"
  STDOUT << "- MagickGetImageSignature: " << String.new( LibMagick.magickGetImageSignature( wand ) ) << "\n"
  STDOUT << "- MagickIdentifyImage:\n" << String.new( LibMagick.magickIdentifyImage( wand ) ) << "\n"
  # int functions
  STDOUT << "- GetImageWidth: " << LibMagick.magickGetImageWidth( wand ) << "\n"
  STDOUT << "- GetImageHeight: " << LibMagick.magickGetImageHeight( wand ) << "\n"
  STDOUT << "- GetImageColors: " << LibMagick.magickGetImageColors( wand ) << "\n"
  STDOUT << "- GetImageCompressionQuality: " << LibMagick.magickGetImageCompressionQuality( wand ) << "\n"
  STDOUT << "- GetImageDelay: " << LibMagick.magickGetImageDelay( wand ) << "\n"
  STDOUT << "- GetImageChannelDepth: " << LibMagick.magickGetImageChannelDepth( wand, LibMagick::ChannelType::DefaultChannels ) << "\n"
  STDOUT << "- GetImageDepth: " << LibMagick.magickGetImageDepth( wand ) << "\n"
  STDOUT << "- GetImageIterations: " << LibMagick.magickGetImageIterations( wand ) << "\n"
  STDOUT << "- GetImageScene: " << LibMagick.magickGetImageScene( wand ) << "\n"
  STDOUT << "- GetImageTicksPerSecond: " << LibMagick.magickGetImageTicksPerSecond( wand ) << "\n"
  STDOUT << "- GetNumberImages: " << LibMagick.magickGetNumberImages( wand ) << "\n"
  STDOUT << "\n"
  # enum functions
  STDOUT << "- GetImageCompression: " << LibMagick.magickGetImageCompression( wand ) << "\n"
  STDOUT << "- GetImageType: " << LibMagick.magickGetImageType( wand ) << "\n"
  STDOUT << "\n"
  # misc functions
  STDOUT << "- GetImageChannelStatistics: " << LibMagick.magickGetImageChannelStatistics( wand ).value << "\n"
end
LibMagick.destroyMagickWand( wand )
LibMagick.magickWandTerminus
