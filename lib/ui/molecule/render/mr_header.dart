import 'package:flutter/material.dart';

import '../molecule.dart';

class MRHeader {

  static Widget header(BuildContext context , String pathImage, {double height=290, double width=440}) =>
      MBHeader.buildHeader(context, pathImage,height, width);


}
