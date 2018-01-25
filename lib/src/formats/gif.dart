library image.formats.gif;

import 'dart:typed_data';

import 'package:image/src/transform.dart' show copyInto;

import 'decode_info.dart';
import 'decoder.dart';
import 'encoder.dart';

import 'package:image/image.dart'
    show InputBuffer, Image, Animation, OutputBuffer, NeuralQuantizer, getColor;

part 'gif/gif_color_map.dart';
part 'gif/gif_image_desc.dart';
part 'gif/gif_info.dart';

part 'gif/gif_decoder.dart';
part 'gif/gif_encoder.dart';
