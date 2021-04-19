import 'package:flutter/material.dart';
import 'package:gb_app/ui/atom/behaviors/behaviors.dart';

class ARImage {
  static Widget fullImageAssetFill(String path) =>
      ABImage.buildImageAssetAtom(path, BoxFit.fill, 100, 100);
}
