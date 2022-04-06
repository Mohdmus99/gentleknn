import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gentleknn/components/general/error_and_confirm_message.dart';
import 'package:gentleknn/components/general/signin_card.dart';
import 'package:gentleknn/components/general/signup_card.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/screens/general/signin_screen.dart';
import 'package:gentleknn/screens/general/visitor_main_screen.dart';
import 'package:gentleknn/utilities/size_config.dart';

class SignUpScreen extends StatefulWidget {

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 20.0,
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
                        'Sign Up',
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
                height: 20.0,
              ),
              SignUpCard(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Registered? ',
                    style: kNormalBoldTextStyle15.copyWith(
                        fontWeight: FontWeight.normal, color: Colors.white),
                  ),
                  GestureDetector(
                    child: Text(
                      'Sign in',
                      style: kNormalBoldTextStyle15.copyWith(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      ///TODO: This function should direct the user to the Visitor page.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ),
                      );
                    },
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
      ),
    );
  }
}
