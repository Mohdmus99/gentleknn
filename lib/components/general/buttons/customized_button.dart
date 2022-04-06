import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/utilities/default_values.dart';
import 'package:gentleknn/utilities/size_config.dart';

class CustomizedButton extends StatelessWidget {
  CustomizedButton({
    required this.label,
    required this.height,
    required this.width,
    this.buttonColor,
    this.fontColor,
    required this.textStyle,
    this.radius,
    this.onPressed,
  });

  final String label;
  final List<Color>? buttonColor;
  final Color? fontColor;
  final VoidCallback? onPressed;
  final TextStyle textStyle;
  final double height;
  final double width;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      margin: EdgeInsets.all(6.0),
      child: GestureDetector(
        onTap: this.onPressed,
        child: Container(
          height: SizeConfig.screenWidth! / this.height,
          width: SizeConfig.screenWidth! / this.width,
          decoration: BoxDecoration(
            boxShadow: kBoxShadow1,
            gradient: LinearGradient(
              colors: buttonColor ?? [primaryColor, primaryColor],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.5, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(radius ?? 20.0),
            ),
          ),
          child: Center(
            child: Text(
              this.label,
              // If the color of the button does not passed by the fontColor variable, then it will be taken from the textStyle
              style: this.textStyle.copyWith(
                    color: fontColor ?? DefaultValues.fontColor,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
