# MagickWand for Crystal [![Build Status](https://travis-ci.org/blocknotes/magickwand-crystal.svg?branch=im_7.0)](https://travis-ci.org/blocknotes/magickwand-crystal)

Crystal C bindings for MagickWand library, an interface to use the ImageMagick image processing libraries - see [www.imagemagick.org](https://www.imagemagick.org/script/magick-wand.php)

**NOTE**: actually not all functions are mapped, it's a quite large library - if you find something missing [contact me](http://www.blocknot.es/me)

## Requirements

- *libMagickWand* must be installed
- *pkg-config* must be available

## Installation

- Add this to your application's `shard.yml`:

```yaml
dependencies:
  magickwand-crystal:
    github: blocknotes/magickwand-crystal
```

## Usage

Get image info:

```ruby
require "magickwand-crystal"
LibMagick.magickWandGenesis    # lib init
wand = LibMagick.newMagickWand # lib init
if LibMagick.magickReadImage( wand, "test.png" )
  puts LibMagick.magickGetImageWidth wand
  puts LibMagick.magickGetImageHeight wand
end
LibMagick.destroyMagickWand wand  # lib deinit
LibMagick.magickWandTerminus      # lib deinit
```

Scale image and save in Jpeg format:

```ruby
require "magickwand-crystal"
# ... lib init ...
LibMagick.magickReadImage wand, "test.png"
LibMagick.magickScaleImage wand, 320, 240
LibMagick.magickWriteImage wand, "test2.jpg"
# ... lib deinit ...
```

Convert to grayscale:

```ruby
require "magickwand-crystal"
# ... lib init ...
LibMagick.magickReadImage wand, "test.jpg"
LibMagick.magickTransformImageColorspace wand, LibMagick::ColorspaceType::GRAYColorspace
LibMagick.magickWriteImage wand, "grayscale.jpg"
# ... lib deinit ...
```

## More examples

See [examples](https://github.com/blocknotes/magickwand-crystal/tree/master/examples) folder. There is also an example to generate an image on the fly with Kemal.

## Documentation

The functions mapped have the same names of the MagickWand C library but with the first letter in lowercase.

Example: `MagickWandGenesis` => `LibMagick.magickWandGenesis`

- [MagickWand C Documentation](https://www.imagemagick.org/api/MagickWand/index.html)
- [MagickWand Examples in C](http://members.shaw.ca/el.supremo/MagickWand/)

## Notes

Based on ImageMagick version: **7.0.4-1**

The Crystal Magic Wand ! :)

Sounds funny but I hope you find it a useful piece of software.

## Contributors

- [Mattia Roccoberton](http://blocknot.es) - creator, maintainer, Crystal fan :)
