import 'package:flutter/material.dart';
import 'package:gentleknn/utilities/default_values.dart';
import 'package:gentleknn/utilities/size_config.dart';

class SmallHorizontalButton extends StatelessWidget {
  SmallHorizontalButton({
    required this.label,
    required this.buttonColor,
    required this.fontColor,
    this.onPressed,
  });

  final String label;
  final Color buttonColor;
  final Color fontColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(7.0),
        width: SizeConfig.screenWidth! / 5.5,
        height: 28.0,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 18.0,
              color: fontColor,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(9.0),
        ),
      ),
    );
  }
}
