# magickwand for Crystal

[![Build Status](https://travis-ci.org/blocknotes/magickwand-crystal.svg)](https://travis-ci.org/blocknotes/magickwand-crystal)

---

Crystal C bindings for MagickWand library, an interface to use the ImageMagick image processing libraries - see [www.imagemagick.org](https://www.imagemagick.org/script/magick-wand.php)

**NOTE**: actually only a part of the MagickCore and MagickWand are Mapped

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
LibMagick.magickWandGenesis
wand = LibMagick.newMagickWand
if LibMagick.magickReadImage( wand, "test.png" )
  puts LibMagick.magickGetImageWidth( wand )
  puts LibMagick.magickGetImageHeight( wand )
end
LibMagick.destroyMagickWand( wand )
LibMagick.magickWandTerminus
```

## More examples

See [examples](https://github.com/blocknotes/magickwand-crystal/tree/master/examples) folder.

## Contributors

- [Mattia Roccoberton](http://blocknot.es) - creator, maintainer
