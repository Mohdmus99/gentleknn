import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/utilities/default_values.dart';
import 'package:gentleknn/utilities/size_config.dart';

class SignOutButton extends StatelessWidget {
  SignOutButton({
    required this.label,
    this.onPressed,
  });

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: 30,
      width: SizeConfig.screenWidth! / 4.5,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: primaryGradient,
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.5, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed ?? DefaultValues.emptyCallBack,
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 10,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(9.0)),
          ),
          padding: EdgeInsets.all(7.0),
        ),
      ),
    );
  }
}
