import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/constants/string_constant.dart';

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          child: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
        ),
        Text(
          StringConstant.back,
          style: kNormalTextStyle15.copyWith(color: primaryColor),
        )
      ],
    );
  }
}
