import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/utilities/default_values.dart';

class CircularIconButton extends StatelessWidget {
  CircularIconButton({
    this.onPressed,
    this.circleColor,
    this.iconColor,
    required this.icon,
    this.isRequiredStar,
    this.shadow,
  });

  final VoidCallback? onPressed;
  final Color? circleColor;
  final Color? iconColor;
  final IconData icon;
  final bool? isRequiredStar;
  final List<BoxShadow>? shadow;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        isRequiredStar == true
            ? Positioned(
                left: 10.0,
                child: Text(
                  '*',
                  style: TextStyle(color: Colors.red),
                ),
              )
            : Text(''),
        Container(
          margin: EdgeInsets.all(10.0),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 35.0,
              color: iconColor ?? Colors.black,
            ),
          ),
          decoration: BoxDecoration(
            color: circleColor,
            borderRadius: BorderRadius.circular(50.0),
            boxShadow: shadow ?? DefaultValues.shadow,
          ),
          height: 60.0,
          width: 60.0,
        ),
      ],
    );
  }
}
