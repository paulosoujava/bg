import 'package:flutter/material.dart';

mixin Post{
  Future<void> showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('O que tem em mente?'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextField(
                  maxLines: null,
                  maxLength: 148,
                  keyboardType: TextInputType.multiline,
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Postar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}