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

import 'src/draw.dart'
    show drawPixel, drawString;
import 'src/formats.dart' show ExrDecoder;

export 'src/draw.dart';
export 'src/effects.dart';
export 'src/filter.dart';
export 'src/fonts.dart';

export 'src/formats.dart';

part 'src/formats/gif/gif_color_map.dart';
part 'src/formats/gif/gif_image_desc.dart';
part 'src/formats/gif/gif_info.dart';
part 'src/formats/jpeg/jpeg.dart';
part 'src/formats/jpeg/jpeg_adobe.dart';
part 'src/formats/jpeg/jpeg_component.dart';
part 'src/formats/jpeg/jpeg_data.dart';
part 'src/formats/jpeg/jpeg_frame.dart';
part 'src/formats/jpeg/jpeg_info.dart';
part 'src/formats/jpeg/jpeg_jfif.dart';
part 'src/formats/jpeg/jpeg_scan.dart';
part 'src/formats/png/png_frame.dart';
part 'src/formats/png/png_info.dart';
part 'src/formats/psd/effect/psd_bevel_effect.dart';
part 'src/formats/psd/effect/psd_drop_shadow_effect.dart';
part 'src/formats/psd/effect/psd_effect.dart';
part 'src/formats/psd/effect/psd_inner_glow_effect.dart';
part 'src/formats/psd/effect/psd_inner_shadow_effect.dart';
part 'src/formats/psd/effect/psd_outer_glow_effect.dart';
part 'src/formats/psd/effect/psd_solid_fill_effect.dart';
part 'src/formats/psd/layer_data/psd_layer_additional_data.dart';
part 'src/formats/psd/layer_data/psd_layer_section_divider.dart';
part 'src/formats/psd/psd_blending_ranges.dart';
part 'src/formats/psd/psd_channel.dart';
part 'src/formats/psd/psd_image_resource.dart';
part 'src/formats/psd/psd_image.dart';
part 'src/formats/psd/psd_layer.dart';
part 'src/formats/psd/psd_layer_data.dart';
part 'src/formats/psd/psd_mask.dart';
part 'src/formats/pvrtc/pvrtc_bit_utility.dart';
part 'src/formats/pvrtc/pvrtc_color.dart';
part 'src/formats/pvrtc/pvrtc_color_bounding_box.dart';
part 'src/formats/pvrtc/pvrtc_decoder.dart';
part 'src/formats/pvrtc/pvrtc_encoder.dart';
part 'src/formats/pvrtc/pvrtc_packet.dart';
part 'src/formats/tga/tga_info.dart';
part 'src/formats/tiff/tiff_bit_reader.dart';
part 'src/formats/tiff/tiff_entry.dart';
part 'src/formats/tiff/tiff_fax_decoder.dart';
part 'src/formats/tiff/tiff_image.dart';
part 'src/formats/tiff/tiff_info.dart';
part 'src/formats/tiff/tiff_lzw_decoder.dart';
part 'src/formats/webp/vp8.dart';
part 'src/formats/webp/vp8_bit_reader.dart';
part 'src/formats/webp/vp8_filter.dart';
part 'src/formats/webp/vp8_types.dart';
part 'src/formats/webp/vp8l.dart';
part 'src/formats/webp/vp8l_bit_reader.dart';
part 'src/formats/webp/vp8l_color_cache.dart';
part 'src/formats/webp/vp8l_transform.dart';
part 'src/formats/webp/webp_alpha.dart';
part 'src/formats/webp/webp_filters.dart';
part 'src/formats/webp/webp_frame.dart';
part 'src/formats/webp/webp_huffman.dart';
part 'src/formats/webp/webp_info.dart';
part 'src/formats/decoder.dart';
part 'src/formats/decode_info.dart';
part 'src/formats/encoder.dart';
part 'src/formats/formats.dart';
part 'src/formats/gif_decoder.dart';
part 'src/formats/gif_encoder.dart';
part 'src/formats/jpeg_decoder.dart';
part 'src/formats/jpeg_encoder.dart';
part 'src/formats/png_decoder.dart';
part 'src/formats/png_encoder.dart';
part 'src/formats/psd_decoder.dart';
part 'src/formats/tga_decoder.dart';
part 'src/formats/tga_encoder.dart';
part 'src/formats/tiff_decoder.dart';
part 'src/formats/webp_decoder.dart';
part 'src/formats/webp_encoder.dart';

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
