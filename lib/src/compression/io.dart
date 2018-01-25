/// Image compression base library using dart:io for INFLATE and DEFLATE
/// operations.
///
/// For the generic library, see `compression/archive.dart`.
library image.compression.archive;

import 'dart:typed_data';
import 'dart:io' show ZLibEncoder, ZLibDecoder, ZLibOption;

Uint8List inflate(Uint8List bytes, [int sizeHint]) {
  return new ZLibDecoder(raw: true).convert(bytes);
}

Uint8List deflate(Uint8List bytes, {int level: ZLibOption.DEFAULT_LEVEL}) {
  return new ZLibEncoder(level: level ?? ZLibOption.DEFAULT_LEVEL, raw: true)
      .convert(bytes);
}

Uint8List zLibDecode(Uint8List bytes) {
  return new ZLibDecoder().convert(bytes);
}

Uint8List zLibEncode(Uint8List bytes, {int level: ZLibOption.DEFAULT_LEVEL}) {
  return new ZLibEncoder(level: level ?? ZLibOption.DEFAULT_LEVEL)
      .convert(bytes);
}
