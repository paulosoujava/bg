import 'package:flutter/material.dart';
import 'package:gb_app/ui/molecule/molecule.dart';

import '../../../core/extension/image.dart';

import 'package:gb_app/ui/atom/atom.dart';
import 'package:gb_app/ui/atom/render/render.dart';

mixin MBLoad {
  static Widget buildLoad(context, pt1, pt2, pt3) {
    return Container(
      color: Colors.black87,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 45,
            width: 45,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
          ARText.customText(context, pt1, pt2, pt3)
        ],
      ),
    );
  }

  static Widget buildLoadError(context, pt1, pt2, pt3, label, onPress) {
    return Container(
      color: Colors.black87,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 145,
              width: 145,
              child: ARImage.fullImageAssetFill("angry".png()),
            ),
          ),
          ARText.customText(context, pt1, pt2, pt3),
          MRButton.link(label, onPress, color:  Colors.white)
        ],
      ),
    );
  }
}
