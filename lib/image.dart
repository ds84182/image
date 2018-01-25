/**
 * The image library aims to provide server-side programs the ability to load,
 * manipulate, and save various image file formats.
 */
library image;

import 'dart:collection';
import 'dart:math' as Math;
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:xml/xml.dart' as XML;

import 'src/draw.dart' show drawPixel, drawString;
import 'src/formats.dart'
    show
        ExrDecoder,
        GifDecoder,
        GifEncoder,
        JpegDecoder,
        JpegEncoder,
        PngDecoder,
        PngEncoder,
        PsdDecoder,
        TgaEncoder,
        TgaDecoder,
        TiffDecoder,
        WebPDecoder;

export 'src/draw.dart';
export 'src/effects.dart';
export 'src/filter.dart';
export 'src/fonts.dart';

export 'src/formats.dart';

part 'src/formats/decoder.dart';
part 'src/formats/decode_info.dart';
part 'src/formats/encoder.dart';
part 'src/formats/formats.dart';

part 'src/hdr/half.dart';
part 'src/hdr/hdr_bloom.dart';
part 'src/hdr/hdr_gamma.dart';
part 'src/hdr/hdr_image.dart';
part 'src/hdr/hdr_slice.dart';
part 'src/hdr/hdr_to_image.dart';
part 'src/hdr/reinhard_tone_map.dart';

part 'src/transform/copy_into.dart';
part 'src/transform/copy_crop.dart';
part 'src/transform/copy_resize.dart';
part 'src/transform/copy_rotate.dart';
part 'src/transform/flip.dart';
part 'src/transform/trim.dart';

part 'src/util/bit_operators.dart';
part 'src/util/clip_line.dart';
part 'src/util/input_buffer.dart';
part 'src/util/interpolation.dart';
part 'src/util/min_max.dart';
part 'src/util/neural_quantizer.dart';
part 'src/util/output_buffer.dart';
part 'src/util/random.dart';

part 'src/animation.dart';
part 'src/bitmap_font.dart';
part 'src/color.dart';
part 'src/image.dart';
part 'src/image_exception.dart';
