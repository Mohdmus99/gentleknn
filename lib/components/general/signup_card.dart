import 'package:gentleknn/components/general/text_field.dart';
import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/components/general/text_field.dart';
import 'package:gentleknn/components/general/buttons/horizental_button.dart';
import 'package:gentleknn/constants/string_constant.dart';
import 'package:gentleknn/utilities/size_config.dart';

class SignUpCard extends StatelessWidget {
  SignUpCard({
    this.onSignUp,
  });

  final VoidCallback? onSignUp;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      height: SizeConfig.screenHeight! / 1.55,
      width: SizeConfig.screenWidth! / 1.2,
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      margin: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              TextFieldX(
                label: 'First Name',
              ),
              TextFieldX(
                label: 'Last Name',
              ),
              TextFieldX(
                label: StringConstant.kfupmEmail,
              ),
              TextFieldX(
                label: StringConstant.password,
                obscureText: true,
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          BigHorizontalButton(
            label: StringConstant.signUp,
            buttonColor: goldGradients,
            fontColor: Colors.black,
            onPressed: onSignUp,
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
