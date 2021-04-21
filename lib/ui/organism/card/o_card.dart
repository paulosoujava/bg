import 'package:brasil_fields/brasil_fields.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../ui/ui.dart';

class OCard extends StatelessWidget {

  final String name;
  final String content;
  final String createdAt;
  final String profilePicture;


  OCard({this.name, this.content, this.createdAt, this.profilePicture});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.red,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 400.0,
              height: 400.0,
              child: CachedNetworkImage(
                imageUrl: profilePicture,
                placeholder: (context, url) =>
                    MRHeader.header(context, "logo".png()),
                errorWidget: (context, url, error) =>
                    MRHeader.header(context, "logo".png()),
              ),
            ),
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
    );
  }
}
