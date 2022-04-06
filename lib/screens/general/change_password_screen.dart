import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gentleknn/components/general/buttons/customized_button.dart';
import 'package:gentleknn/components/general/change_password_card.dart';
import 'package:gentleknn/components/general/signin_card.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/screens/general/visitor_main_screen.dart';
import 'package:gentleknn/utilities/size_config.dart';

class ChangePasswordScreen extends StatefulWidget {
  ChangePasswordScreen({
    required this.isWithOldPassword,
  });

  final bool isWithOldPassword;

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
                  widget.isWithOldPassword
                      ? Navigator.pop(context)
                      : {
                          Navigator.pop(context),
                          Navigator.pop(context),
                          Navigator.pop(context),
                        };
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
                          'Change Password',
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
                ChangePasswordCard(
                  onChangePassword: () {
                    /// TODO: Here is the code procedure for changing password.
                  },
                  isWithOldPassword: widget.isWithOldPassword,
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
