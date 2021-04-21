import 'package:flutter/material.dart';
import 'package:gb_app/ui/atom/atom.dart';
import 'package:gb_app/ui/molecule/molecule.dart';
import 'package:gb_app/ui/organism/organism.dart';
import 'package:gb_app/ui/themes/app_theme.dart';

class TPLDefault extends StatelessWidget {
  final Widget mrButton;
  final List<Widget> children;
  final List<Widget> childrenColumn;

  const TPLDefault({Key key, this.mrButton, this.children, this.childrenColumn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: makeAppTheme().primaryColorDark,
      floatingActionButton: mrButton,
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: size.width,
                  height: size.height * 0.18,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: children),
                  ))),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: size.width,
                height: size.height * 0.87,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: SingleChildScrollView(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 40, left: 32, right: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: childrenColumn,
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
