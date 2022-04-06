import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gentleknn/components/general/buttons/customized_button.dart';
import 'package:gentleknn/components/general/buttons/horizental_button.dart';
import 'package:gentleknn/components/general/change_password_card.dart';
import 'package:gentleknn/components/general/signin_card.dart';
import 'package:gentleknn/components/general/text_field.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/screens/general/pin_verification_screen.dart';
import 'package:gentleknn/screens/general/visitor_main_screen.dart';
import 'package:gentleknn/utilities/size_config.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 30.0,
              left: 5.0,
              child: CustomizedButton(
                label: 'Back',
                height: 12.0,
                width: 5.0,
                fontColor: thirdColor,
                onPressed: () {
                  Navigator.pop(context);
                },
                textStyle: kNormalTextStyle13,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'assets/images/kfupm_icon.jpg',
                        height: 100.0,
                        width: 100.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'KFUPM ',
                              style: kNormalTextStyle13.copyWith(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Clubs',
                              style: kNormalBoldTextStyle20.copyWith(
                                  color: Colors.white, fontSize: 30),
                            ),
                          ],
                        ),
                        Text(
                          'Reset Password',
                          style: kNormalTextStyle13.copyWith(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: SizeConfig.screenHeight! / 2.5,
                  width: SizeConfig.screenWidth! / 1.2,
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter the email associated with your account and we will send an'
                            'email with instructions to reset your password',
                            style: kNormalTextStyle13.copyWith(
                              color: Colors.grey,
                            ),
                          ),
                          TextFieldX(
                            label: 'Email Address',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      BigHorizontalButton(
                        label: 'Send Instructions',
                        buttonColor: goldGradients,
                        fontColor: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PinVerificationScreen(
                                email: '',
                              ),
                            ),
                          );
                        },
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
                ),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/kfupm_bg.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
