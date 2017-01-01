# magickwand for Crystal

[![Build Status](https://travis-ci.org/blocknotes/magickwand-crystal.svg)](https://travis-ci.org/blocknotes/magickwand-crystal)

---

Crystal C bindings for MagickWand library, an interface to use the ImageMagick image processing libraries - see [www.imagemagick.org](https://www.imagemagick.org/script/magick-wand.php)

**NOTE**: actually only a part of the MagickCore and MagickWand are mapped, it's a quite large library

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
  puts LibMagick.magickGetImageWidth( wand )
  puts LibMagick.magickGetImageHeight( wand )
end
LibMagick.destroyMagickWand( wand ) # lib deinit
LibMagick.magickWandTerminus        # lib deinit
```

Scale and convert image:

```ruby
require "magickwand-crystal"
# ... lib init ...
LibMagick.magickReadImage( wand, "test.png" )
LibMagick.magickScaleImage wand, 320, 240
LibMagick.magickWriteImage wand, "test2.jpg"
# ... lib deinit ...
```

## More examples

See [examples](https://github.com/blocknotes/magickwand-crystal/tree/master/examples) folder.

## Notes

This is the Crystal Magic Wand ! :)

Sounds funny but I hope you find it a useful piece of software.

## Contributors

- [Mattia Roccoberton](http://blocknot.es) - creator, maintainer, Crystal fan :)
