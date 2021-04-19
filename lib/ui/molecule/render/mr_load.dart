import 'package:flutter/material.dart';

import '../molecule.dart';

class MRLoad {
  static Widget load(BuildContext context,
          {pt1 = "Por\n", pt2 = "\t\t\tFavor", pt3 = "\nAguarde.."}) =>
      MBLoad.buildLoad(context, pt1, pt2, pt3);

  static Widget loadError(
    BuildContext context, {
    @required label,
    @required onPress,
    pt1 = "Ops\n",
    pt2 = "\t\t\tValide",
    pt3 = "\nos campos..",
  }) =>
      MBLoad.buildLoadError(context, pt1, pt2, pt3, label, onPress);
}
