import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/utilities/default_values.dart';
import 'package:gentleknn/utilities/size_config.dart';

class HorizontalButton extends StatelessWidget {
  HorizontalButton({
    required this.label,

    ///TODO: FIX THE NAME
    ///TODO: Important note: the background Color of this widget is taking list of colors not single color.
    this.buttonColor,
    this.fontColor,
    this.onPressed,
  });

  final String label;
  final List<Color>? buttonColor;
  final Color? fontColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: Text(
              label,
              style: TextStyle(fontSize: 15.0, color: fontColor),
            ),
          ),
        ),
        decoration: BoxDecoration(
            border: Border.all(color: fontColor ?? DefaultValues.whiteColor),
            // color: buttonCollr,
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(
                colors:
                    buttonColor ?? [DefaultValues.color, DefaultValues.color])),
        width: SizeConfig.screenWidth! / 2.5,
        height: 32.0,
      ),
    );
  }
}

class BigHorizontalButton extends StatelessWidget {
  BigHorizontalButton({
    required this.label,
    this.buttonColor,
    this.fontColor,
    this.onPressed,
  });

  final String label;
  final List<Color>? buttonColor;
  final Color? fontColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: Text(
              label,
              style: kNormalBoldTextStyle15.copyWith(color: fontColor),
            ),
          ),
        ),
        decoration: BoxDecoration(
          // color: buttonCollr,
          borderRadius: BorderRadius.circular(19.0),
          gradient: LinearGradient(
              colors:
                  buttonColor ?? [DefaultValues.color, DefaultValues.color]),
        ),
        width: SizeConfig.screenWidth! / 2.5,
        height: 40.0,
      ),
    );
  }
}
