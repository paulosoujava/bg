import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gb_app/ui/atom/render/ar_space.dart';


class OForm extends StatefulWidget {

  final controller ;
  final Map<String, dynamic> mapper;
  final List<Widget> inputs;
  OForm({Key key, @required this.controller, @required this.mapper, @required this.inputs}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<OForm> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: ()=> widget.controller.closeKeyboard(context),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    widget.mapper['logo'],
                    ARSpace.spaceH20(),
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
                          ... widget.inputs,
                          ARSpace.spaceH20(),
                          Align(
                            child: widget.mapper['button'],
                            alignment: Alignment.centerRight,
                          ),
                          ARSpace.spaceH40(),
                          widget.mapper['link'],
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              widget.mapper['load'],
              widget.mapper['errors'],
            ],
          ),
        ),
      ),
    );
  }
}
