import 'package:flutter/material.dart';

import '../molecule.dart';

class MRLoad {
  static Widget load(BuildContext context,
          {pt1 = "Por\n", pt2 = "\t\t\tFavor", pt3 = "\nAguarde.."}) =>
      MBLoad.buildLoad(context, pt1, pt2, pt3);

  static Widget loadError({
    @required headertitle,
    @required footerTitle,
    @required errorMessage,
    @required onTap,
  }) =>
      MBLoad.buildLoadError(headertitle, errorMessage, footerTitle, onTap);
}
