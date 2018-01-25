/// Image compression base library using package:archive for INFLATE and DEFLATE
/// operations.
///
/// For the dart:io specific implementation, see `compression/io.dart`.
library image.compression.archive;

import 'dart:typed_data';

import 'package:archive/archive.dart'
    show Inflate, Deflate, ZLibEncoder, ZLibDecoder;

Uint8List inflate(Uint8List bytes, [int sizeHint]) {
  return new Inflate(bytes, sizeHint).getBytes();
}

Uint8List deflate(Uint8List bytes, {int level: Deflate.DEFAULT_COMPRESSION}) {
  return new Deflate(bytes, level: level ?? Deflate.DEFAULT_COMPRESSION)
      .getBytes();
}

Uint8List zLibDecode(Uint8List bytes) {
  return new ZLibDecoder().decodeBytes(bytes);
}

Uint8List zLibEncode(Uint8List bytes,
    {int level: Deflate.DEFAULT_COMPRESSION}) {
  return new ZLibEncoder()
      .encode(bytes, level: level ?? Deflate.DEFAULT_COMPRESSION);
}
