library image.formats.tga;

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
        getRed,
        getGreen,
        getBlue,
        getAlpha;

part 'tga/tga_info.dart';

part 'tga/tga_decoder.dart';
part 'tga/tga_encoder.dart';
