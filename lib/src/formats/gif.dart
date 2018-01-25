library image.formats.gif;

import 'dart:math' as Math;
import 'dart:typed_data';

import 'package:image/image.dart'
    show
        InputBuffer,
        DecodeInfo,
        Decoder,
        Image,
        Animation,
        Encoder,
        OutputBuffer,
        NeuralQuantizer,
        getColor,
        copyInto;

part 'gif/gif_color_map.dart';
part 'gif/gif_image_desc.dart';
part 'gif/gif_info.dart';

part 'gif_decoder.dart';
part 'gif_encoder.dart';
