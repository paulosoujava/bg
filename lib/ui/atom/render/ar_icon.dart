import 'package:flutter/material.dart';
import 'package:gb_app/ui/atom/behaviors/behaviors.dart';

class ARSpace {
  static Widget spaceH20() => ABSpace.buildSpaceH(20);
  static Widget spaceH40() => ABSpace.buildSpaceH(40);
  static Widget spaceW20() => ABSpace.buildSpaceW(20);
  static Widget spaceHW20() => ABSpace.buildSpaceWH(20,20);
}
