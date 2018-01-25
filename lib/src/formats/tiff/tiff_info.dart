part of image.formats.tiff;

class TiffInfo extends DecodeInfo {
  bool bigEndian;
  int signature;

  int ifdOffset;
  List<TiffImage> images = [];

  int get numFrames => images.length;
}
