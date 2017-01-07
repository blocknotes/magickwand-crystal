
SRC = "../_misc/ImageMagick-6.9.7-2"

# file1 = SRC + "/magick/option.h"
# file2 = "../src/magickwand-crystal/lib_option.cr"

file1 = SRC + "/wand/magick-property.h"
file2 = "../src/magickwand-crystal/lib_property.cr"

# file1 = SRC + "/wand/drawing-wand.h"
# file2 = "../src/magickwand-crystal/lib_drawing_wand.cr"

# file1 = SRC + "/wand/MagickWand.h"
# file2 = "../src/magickwand-crystal/lib_magick.cr"

# file1 = SRC + "/wand/magick-image.h"
# file2 = "../src/magickwand-crystal/lib_magick_image.cr"

# file1 = SRC + "/wand/pixel-wand.h"
# file2 = "../src/magickwand-crystal/lib_pixel_wand.cr"

# --------------------------------------------------------------------------- #

class HeadersInfo
  @data1 = [] of { String, String, String }
  @data2 = [] of { String, String, String }

  def initialize( @file1 : String, @file2 : String )
  end

  CONVERT_TYPES = {
    "char" => "LibC::Char",
    "double" => "LibC::Double",
    "FILE" => "LibStd::File",
    "size_t" => "LibC::SizeT",
    "ssize_t" => "LibC::SSizeT",
    "unsigned char" => "LibC::UChar",
    "void" => "Void",
    # --- #
    "CommandOption" => "CommandOption",
    "ImageInfo" => "ImageInfo",
    "ExceptionInfo" => "ExceptionInfo",
    # --- #
    "ResourceType" => "ResourceType",
    "ResourceType type" => "ResourceType",  # @
    "MagickSizeType limit" => "MagickSizeType",  # @
    # --- #
    "AffineMatrix" => "AffineMatrix",
    "AlignType" => "AlignType",
    "ClipPathUnits" => "ClipPathUnits",
    "DecorationType" => "DecorationType",
    "DirectionType" => "DirectionType",
    "DrawInfo" => "DrawInfo",
    "FillRule" => "FillRule",
    "LineCap" => "LineCap",
    "LineJoin" => "LineJoin",
    "PaintMethod" => "PaintMethod",
    "PointInfo" => "PointInfo",
    "StretchType" => "StretchType",
    "StyleType" => "StyleType",
    # --- #
    "ExceptionType" => "ExceptionType",
    # --- #
    "AlphaChannelType" => "AlphaChannelType",
    "ChannelFeatures" => "ChannelFeatures",
    "ChannelStatistics" => "ChannelStatistics",
    "ChannelType" => "ChannelType",
    "ColorspaceType" => "ColorspaceType",
    "CompositeOperator" => "CompositeOperator",
    "CompositeOperator compose" => "CompositeOperator",  # @
    "CompressionType" => "CompressionType",
    "DisposeType" => "DisposeType",
    "DistortMethod" => "DistortMethod",
    "DistortImageMethod" => "DistortImageMethod",
    "DitherMethod" => "DitherMethod",
    "DrawingWand" => "DrawingWand",
    "EndianType" => "EndianType",
    "FilterTypes" => "FilterTypes",
    "GravityType" => "GravityType",
    "Image" => "Image",
    "ImageLayerMethod" => "ImageLayerMethod",
    "ImageType" => "ImageType",
    "InterlaceType" => "InterlaceType",
    "InterpolatePixelMethod" => "InterpolatePixelMethod",
    "KernelInfo" => "KernelInfo",
    "MagickBooleanType" => "Bool",
    "MagickBooleanType invert" => "Bool",  # @
    "MagickEvaluateOperator" => "MagickEvaluateOperator",
    "MagickFunction" => "MagickFunction",
    "MagickProgressMonitor" => "MagickProgressMonitor",
    "MagickSizeType" => "MagickSizeType",
    "MagickWand" => "MagickWand",
    "MetricType" => "MetricType",
    "MontageMode" => "MontageMode",
    "MorphologyMethod" => "MorphologyMethod",
    "NoiseType" => "NoiseType",
    "OrientationType" => "OrientationType",
    "PixelWand" => "PixelWand",
    "PixelInterpolateMethod" => "PixelInterpolateMethod",
    "PreviewType" => "PreviewType",
    "RectangleInfo" => "RectangleInfo",
    "RenderingIntent" => "RenderingIntent",
    "ResolutionType" => "ResolutionType",
    "SparseColorMethod" => "SparseColorMethod",
    "StatisticType" => "StatisticType",
    "StorageType" => "StorageType",
    "VirtualPixelMethod" => "VirtualPixelMethod",
    # --- #
    "IndexPacket" => "IndexPacket",
    "MagickPixelPacket" => "MagickPixelPacket",
    "Quantum" => "Quantum",
    "PixelPacket" => "PixelPacket"
  }
  CONVERT_TYPES_ = CONVERT_TYPES.map do |k, v|
    [ "#{v}", k.to_s ]
  end.to_h

  def adjust1( info )
    t = /([^*]+)([*]*)/.match info[0].gsub( /const /, "" )
    v1 = t ? CONVERT_TYPES[t[1]] + t[2] : ""
    v2 = info[2].split( "," ).map do |part|
      t = /([^*]+)([*]*)/.match part.gsub( /const /, "" )
      CONVERT_TYPES[t[1].strip] + t[2] if t
    end
    v2.clear if v2 == [ "Void" ]
    { info[1].strip, v2.join( "," ), v1 }
  end

  def adjust2( info )
    v1 = info[2].split( "," ).map do |part|
      part.gsub( /\A\s*[^:]+:\s*/, "" ).strip
    end
    { info[1].strip, v1.join( "," ), info[0] }
  end

  def extract_header_functions( file )
    regexp_block = /\Aextern\s+(MagickExport|WandExport)\s+(.+)\z/
    regexp_function = /\A\s*([*]*)([^\()]+)\(([^\)]*)\).*\z/
    regexp_function_l1 = /\A\s*([*]*)([^\()]+)\(([^\)]*)\z/
    regexp_function_l2 = /\A\s*([^\)]*)\).*\z/
    block = ""
    multi_line = nil
    File.each_line file do |line|
      if !block.empty?
        if( match_data = regexp_function.match( line ) )
          # puts block + match_data[1] + " ### " + match_data.inspect
          # puts block + match_data[1] + " | " + match_data[2] + " | " + match_data[3]
          @data1.push( { block + match_data[1], match_data[2], match_data[3] } )
        elsif( match_data = regexp_function_l1.match( line ) )
          # puts block + match_data[1] + " ### " + match_data.inspect
          multi_line = match_data
        elsif multi_line
          if( match_data = regexp_function_l2.match( line ) )
            # puts block + multi_line[1] + " | " + multi_line[2] + " | " + multi_line[3] + match_data[1]
            @data1.push( { block + multi_line[1], multi_line[2], multi_line[3] + match_data[1] } )
          end
          multi_line = nil
        end
        # break if /\A\s*\z/ =~ line  # blank line
        block = "" if /\A\s*\z/ =~ line  # blank line
      elsif( match_data = regexp_block.match( line ) )
        functions = true
        block = match_data[2]
      end
    end
  end

  def extract_header2_functions( file )
    regexp_function = /\A\s*=\s*([^\()]+)\(([^\)]*)\)\s*:\s*(.+)\z/
    File.each_line file do |line|
      if( match_data = regexp_function.match( line ) )
        # p match_data
        @data2.push( { match_data[3], match_data[1], match_data[2] } )
      end
    end
  end

  def compare
    extract_header_functions @file1
    extract_header2_functions @file2
    puts "Size1: #{@data1.size} - Size2: #{@data2.size}"
    @data1.each_with_index do |row, index|
      if adjust1( row ) == adjust2( @data2[index] )
        puts "#{index}: ok"
      else
        puts "#{index}: !! "
        puts " [new] " + adjust1( row ).inspect
        puts " [my ] " + adjust2( @data2[index] ).inspect
        break
      end
    end
  end
end

begin
  h = HeadersInfo.new file1, file2
  h.compare
rescue ke : KeyError
  puts "!!! " + ke.message.to_s
end
