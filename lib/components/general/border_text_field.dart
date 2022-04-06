import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/utilities/default_values.dart';

class BorderTextField extends StatelessWidget {
  BorderTextField({
    this.controller,
    this.color,
    this.hintText,
    this.label,
    this.enabled,
    this.isRequiredStar,
  });

  final TextEditingController? controller;
  final Color? color;
  final String? hintText;
  final String? label;
  final bool? enabled;
  final bool? isRequiredStar;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        isRequiredStar == true
            ? Positioned(
                left: 8.0,
                child: Text(
                  '*',
                  style: TextStyle(color: Colors.red),
                ),
              )
            : Text(''),
        Container(
          margin: EdgeInsets.all(10.0),
          child: TextField(
            controller: controller ?? DefaultValues.controller,
            enabled: enabled ?? true,
            decoration: InputDecoration(
              hintText: hintText ?? DefaultValues.emptyString,
              focusColor: primaryColor,
              hoverColor: primaryColor,
              fillColor: Colors.red,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                ),
                borderRadius: BorderRadius.circular(13.0),
              ),
              labelText: label ?? DefaultValues.emptyString,
              labelStyle: kNormalBoldTextStyle13,
            ),
          ),
        ),
      ],
    );
  }
}
