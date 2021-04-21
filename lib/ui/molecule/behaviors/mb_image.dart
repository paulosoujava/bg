import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gb_app/ui/atom/atom.dart';
import 'package:gb_app/ui/atom/render/ar_text.dart';

import '../../../core/core.dart';
import '../../ui.dart';

mixin MBImage {
  //MOLECULE
  static Container molecule(String pathImage, String text, double h, double w) {
    return Container(
      height: h,
      width: w,
      child: Column(
        children: [
          ARImage.fullImageAssetFill(pathImage),
          ARText.subtitle(text)
        ],
      ),
    );
  }
  static CachedNetworkImage cachedImage(profilePicture){
    return CachedNetworkImage(
      imageUrl: profilePicture,
      placeholder: (context, url) =>
          MRHeader.header(context, "logo".png()),
      errorWidget: (context, url, error) =>
          MRHeader.header(context, "logo".png()),
    );
  }

  static customMolecule(String pathImage, BuildContext context, String part1,
      String part2, String part3, double h, double w) {
    return Container(
      height: h,
      width: w,
      child: Column(
        children: [
          ARImage.fullImageAssetFill(pathImage),
          ARText.customText(context, part1, part2, part3)
        ],
      ),
    );
  }
}
