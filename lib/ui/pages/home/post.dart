import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

mixin Post {
  Future<void> showMyDialog(context, controller, {int indice = -1}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('O que tem em mente?'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ARInput.input(
                  "manda ver...",
                  edtController: controller.postText,
                  maxLines: 10,
                  maxLength:240
                ),
              ],
            ),
          ),
          actions:[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  child: Visibility(child:MRButton.link( "deletar", () {
                      indice == -1 ? controller.postThis() : controller.delete(indice);
                      Navigator.of(context).pop();
                    }, w: 120),
                    visible: indice != -1,),
                ),
                Container(
                  width: 90,
                  child: MRButton.link(indice == -1 ? "postar" : "editar", () {
                      indice == -1 ? controller.postThis() : controller.edit(indice);
                      Navigator.of(context).pop();
                    }, w: 90),
                ),

              ],
            ),

          ],
        );
      },
    );
  }
}
