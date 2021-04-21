import 'package:flutter/material.dart';

import '../molecule.dart';

class MRImage {

  static Widget imageInBottomHasAtitle(String pathImage, String text,
          {double h = 300, double w = 300}) =>
      MBImage.molecule(pathImage, text, w, h);

  static Widget imageInBottomHasACustomTitle(String pathImage,
          BuildContext context, String part1, String part2, String part3,
          {double h = 300, double w = 300}) =>
      MBImage.customMolecule(pathImage, context, part1, part2, part3, h, w);

  static cachedImage(profilePicture) => MBImage.cachedImage(profilePicture);
}
