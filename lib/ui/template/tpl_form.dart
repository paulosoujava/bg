import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:gb_app/ui/ui.dart';

class TPLForm extends StatelessWidget {
  final List<Widget> actions;
  final Function hiddeError;
  final Widget organism;
  final ValueListenable<bool> load;
  final ValueListenable<bool> error;
  final String errorMessage;
  final String footerTitle;
  final String headertitle;

  const TPLForm(
      {Key key,
      this.organism,
      this.actions,
      this.load,
      this.error,
      this.errorMessage,
      this.footerTitle,
      this.hiddeError,
      this.headertitle = "Ops, encontrei este(s) error(s):"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: makeAppTheme().primaryColorDark,
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
                        children: actions),
                  ))),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: size.width,
                height: size.height * 0.85,
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
                      child: SingleChildScrollView(
                        child: organism,
                      ),
                    ),
                  ),
                )),
          ),
          ValueListenableBuilder<bool>(
              valueListenable: load,
              builder: (_, enabled, __) =>
                  enabled ? MRLoad.load(context) : Container()),
          GestureDetector(
            onTap: () => hiddeError,
            child: ValueListenableBuilder<bool>(
                valueListenable: error,
                builder: (_, enabled, __) => enabled
                    ? MRLoad.loadError(
                        errorMessage: errorMessage,
                        footerTitle: footerTitle,
                        onTap: hiddeError,
                        headertitle: headertitle)
                    : Container()),
          ),
        ],
      ),
    );
  }
}
