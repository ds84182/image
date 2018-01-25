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
import 'src/util.dart' show LINEAR, CUBIC;

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

export 'src/util.dart';

part 'src/animation.dart';
part 'src/bitmap_font.dart';
part 'src/color.dart';
part 'src/image.dart';
part 'src/image_exception.dart';
