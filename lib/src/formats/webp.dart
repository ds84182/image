library image.formats.webp;

import 'dart:typed_data';

import 'package:image/src/transform.dart' show copyInto;

import 'decode_info.dart';
import 'decoder.dart';
import 'encoder.dart';

import 'package:image/image.dart'
    show
        InputBuffer,
        Image,
        Animation,
        OutputBuffer,
        getColor,
        ImageException,
        getRed,
        getGreen,
        getBlue,
        getAlpha;

part 'webp/vp8.dart';
part 'webp/vp8_bit_reader.dart';
part 'webp/vp8_filter.dart';
part 'webp/vp8_types.dart';
part 'webp/vp8l.dart';
part 'webp/vp8l_bit_reader.dart';
part 'webp/vp8l_color_cache.dart';
part 'webp/vp8l_transform.dart';
part 'webp/webp_alpha.dart';
part 'webp/webp_filters.dart';
part 'webp/webp_frame.dart';
part 'webp/webp_huffman.dart';
part 'webp/webp_info.dart';

part 'webp/webp_decoder.dart';
part 'webp/webp_encoder.dart';