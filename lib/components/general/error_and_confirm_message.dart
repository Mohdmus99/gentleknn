import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gentleknn/constants/string_constant.dart';

//You call this method and pass the main subject then details.
//In the future we can add to it more things such as icons and actions and more.
Future<void> errorAndConfirmMessage(
    context, String mainSubject, String explain) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          mainSubject,
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                explain,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(StringConstant.ok),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
