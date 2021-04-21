import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../ui/ui.dart';
import 'package:gb_app/ui/organism/form/controller.dart';

class OForm extends StatefulWidget {
  final Controller ctrlContract;
  final Map<String, dynamic> mapper;
  final List<Widget> inputs;

  OForm(
      {Key key,
      @required this.ctrlContract,
      @required this.mapper,
      @required this.inputs})
      : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<OForm> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.ctrlContract.closeKeyboard(context),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                child: widget.mapper['header'],
                alignment: Alignment.centerLeft,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Column(
                children: [
                  ...widget.inputs,
                  ARSpace.spaceH20(),
                  Align(
                    child: widget.mapper['button'],
                    alignment: Alignment.centerRight,
                  ),
                  ARSpace.spaceH80(),
                  Align(
                      child: widget.mapper['logo'],
                      alignment: Alignment.center),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
