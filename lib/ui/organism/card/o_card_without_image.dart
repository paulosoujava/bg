import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class OCardWithoutImage extends StatelessWidget {
  final String name;
  final String content;
  final String createdAt;
  final Color color;

  OCardWithoutImage({this.name, this.content, this.createdAt, this.color =  Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      padding: EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: color,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ARText.strong(name),
              ARSpace.spaceH20(),
              Container(
                child: ARText.subtitle(content),
                width: 240,
              ),
              ARSpace.spaceH20(),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 130,
                  child: ARText.subtitle(
                      UtilData.obterDataDDMMAAAA(DateTime.parse(createdAt)) +
                          " " +
                          UtilData.obterHoraHHMMSS(DateTime.parse(createdAt))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
