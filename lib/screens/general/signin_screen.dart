import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gentleknn/components/general/signin_card.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/screens/general/reset_password_screen.dart';
import 'package:gentleknn/screens/general/visitor_main_screen.dart';
import 'package:gentleknn/utilities/size_config.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        child: SafeArea(
          // Use the SingleChildScrollView to avoid Bottom Overflowed
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight! / 17,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'assets/images/kfupm_icon.jpg',
                        height: 150.0,
                        width: 150.0,
                      ),
                      borderRadius: BorderRadius.circular(45.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'KFUPM ',
                          style: kNormalTextStyle13.copyWith(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Clubs',
                          style: kNormalBoldTextStyle20.copyWith(
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
                SignInCard(
                  onSignIn: () {
                    /// TODO: Here is the code for signing in and authenticate the user.
                  },
                  onForgotPassword: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResetPasswordScreen(),
                      ),
                    );

                    /// TODO: Here is the code procedure for forgetting password.
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue as a ',
                      style: kNormalBoldTextStyle15.copyWith(
                          fontWeight: FontWeight.normal, color: Colors.white),
                    ),
                    GestureDetector(
                      child: Text(
                        'Guest',
                        style: kNormalBoldTextStyle15.copyWith(
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ),
                      onTap: () {
                        ///TODO: This function should direct the user to the Visitor page.
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VisitorMainScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight! / 9,
                    )
                  ],
                ),
              ],
            ),
          ),
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
