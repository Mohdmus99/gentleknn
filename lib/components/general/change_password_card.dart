import 'package:gentleknn/components/general/text_field.dart';
import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/components/general/text_field.dart';
import 'package:gentleknn/components/general/buttons/horizental_button.dart';
import 'package:gentleknn/constants/string_constant.dart';
import 'package:gentleknn/utilities/size_config.dart';

// This card is for changing the password, and it is flexible to be used for both
// Changing password and Resetting password procedures
// The variable isWithOld is true when it is used for changing password, otherwise its for Resetting the password.

class ChangePasswordCard extends StatelessWidget {
  ChangePasswordCard({
    this.onChangePassword,
    required this.isWithOldPassword,
  });

  final VoidCallback? onChangePassword;
  final bool isWithOldPassword;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      height: SizeConfig.screenHeight! / (isWithOldPassword ? 1.65 : 2.1),
      width: SizeConfig.screenWidth! / 1.2,
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      margin: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isWithOldPassword
                  ? TextFieldX(
                      label: 'Old Password',
                      obscureText: true,
                    )
                  : Text(''),
              TextFieldX(
                obscureText: true,
                label: 'New Password',
              ),
              TextFieldX(
                obscureText: true,
                label: 'Repeat New Password',
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          BigHorizontalButton(
            label: StringConstant.changePassword,
            buttonColor: goldGradients,
            fontColor: Colors.black,
            onPressed: onChangePassword,
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9.0),
        boxShadow: kBoxShadow1,
      ),
    );
  }
}
