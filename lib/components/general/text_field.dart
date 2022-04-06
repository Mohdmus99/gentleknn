import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/utilities/default_values.dart';
import 'package:gentleknn/utilities/size_config.dart';

class TextFieldX extends StatelessWidget {
  TextFieldX({
    this.controller,
    required this.label,
    this.hintText,
    this.obscureText,
    this.enableSuggestions,
    this.autoCorrect,
  });

  final TextEditingController? controller;
  final String label;
  final String? hintText;
  final bool? obscureText;
  final bool? enableSuggestions;
  final bool? autoCorrect;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      width: SizeConfig.screenWidth! / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            obscureText: obscureText ?? false,
            enableSuggestions: enableSuggestions ?? false,
            autocorrect: autoCorrect ?? false,
            cursorColor: primaryColor,
            controller: controller ?? DefaultValues.controller,
            decoration: InputDecoration(
              hintText: hintText == null ? '' : hintText,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
            ),
          ),
          Text(
            label,
            style: kNormalBoldTextStyle15,
          )
        ],
      ),
    );
  }
}
