import 'package:gentleknn/components/general/text_field.dart';
import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/components/general/text_field.dart';
import 'package:gentleknn/components/general/buttons/horizental_button.dart';
import 'package:gentleknn/constants/string_constant.dart';
import 'package:gentleknn/entities/student.dart';
import 'package:gentleknn/utilities/default_values.dart';
import 'package:gentleknn/utilities/size_config.dart';

class SignInCard extends StatefulWidget {
  SignInCard({
    this.onSignIn,
    this.onForgotPassword,
  });

  final VoidCallback? onSignIn;
  final VoidCallback? onForgotPassword;

  @override
  _SignInCardState createState() => _SignInCardState();
}

class _SignInCardState extends State<SignInCard> {
  TextEditingController _kfupmId = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _kfupmId.text = DefaultValues.emptyString;
    _password.text = DefaultValues.emptyString;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      height: SizeConfig.screenHeight! / 1.9,
      width: SizeConfig.screenWidth! / 1.2,
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      margin: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFieldX(
                label: StringConstant.kfupmEmail,
                controller: _kfupmId,
              ),
              TextFieldX(
                label: StringConstant.password,
                controller: _password,
                obscureText: true,
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          BigHorizontalButton(
            label: StringConstant.signIn,
            buttonColor: goldGradients,
            fontColor: Colors.black,
            onPressed: () {
              if (_kfupmId.text == 'student' && _password.text == '123') {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) =>
                //         MemberMainScreen(
                //       student:
                //       Student(
                //           '11',
                //           's201010',
                //           'Alsalboukh',
                //           'Hussain',
                //           '11-22-2020',
                //           '027836492813',
                //           'mohdmus',
                //           ['cs club', 'robo club']),
                //     ),
                //   ),
                // );
              } else if (_kfupmId.text == 'admin' && _password.text == '123') {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) =>
                //         AdministratorMainScreen(),
                //   ),
                // );
              }
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: widget.onForgotPassword,
            child: Text(
              'Forgot Password?',
              style: kNormalBoldTextStyle15,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'New to KFUPM Clubs? ',
                style: kNormalBoldTextStyle15.copyWith(
                  fontWeight: FontWeight.normal,
                ),
              ),
              GestureDetector(
                child: Text(
                  'Join us now',
                  style: kNormalBoldTextStyle15.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: () {
                  ///TODO: This function should direct the user to the Sign up page.
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         SignUpScreen(),
                  //   ),
                  // );
                },
              ),
            ],
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
