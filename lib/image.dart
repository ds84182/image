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
import 'src/formats.dart' show PngDecoder, TiffDecoder;

export 'src/draw.dart';
export 'src/effects.dart';
export 'src/filter.dart';
export 'src/fonts.dart';

export 'src/formats.dart';
export 'src/formats/decoder.dart';
export 'src/formats/decode_info.dart';
export 'src/formats/encoder.dart';
export 'src/formats/format_utils.dart';

export 'src/hdr.dart';

export 'src/transform.dart';

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
