import 'package:flutter/material.dart';
import 'package:gentleknn/components/general/buttons/customized_button.dart';
import 'package:gentleknn/constants/string_constant.dart';
// import 'package:gentleknn/garbage/change_password.dart';
import 'package:gentleknn/fragments/modify_profile_fragment.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/entities/student.dart';
import 'package:gentleknn/screens/general/change_password_screen.dart';
import 'package:gentleknn/screens/general/signin_screen.dart';

///TODO: Very bad and naive UI/UX, this fragment is to be changed later.

class SettingsFragment extends StatefulWidget {
  @override
  _SettingsFragmentState createState() => _SettingsFragmentState();

  SettingsFragment({
    required this.student,
  });

  final Student student;
}

class _SettingsFragmentState extends State<SettingsFragment> {
  bool themeVale = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            children: [
              Text('Switch to dark mode:'),
              Switch(
                value: themeVale,
                onChanged: (bool value) {
                  setState(() {
                    themeVale = value;
                  });
                },
                activeColor: Colors.black45,
              ),
            ],
          ),
          // CustomizedButton(
          //   height: 15.0,
          //   width: 2.0,
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => ModifyProfileFragment(
          //                 student: widget.student,
          //               )),
          //     );
          //   },
          //   radius: 20.0,
          //   textStyle: kNormalTextStyle13,
          //   label: 'Modify profile information',
          // ),
          CustomizedButton(
            height: 15.0,
            width: 3.0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChangePasswordScreen(
                    isWithOldPassword: true,
                  ),
                ),
              );
            },
            radius: 20.0,
            textStyle: kNormalTextStyle13,
            label: StringConstant.changePassword,
          ),
          CustomizedButton(
            height: 15.0,
            width: 3.0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInScreen(),
                ),
              );
            },
            radius: 20.0,
            textStyle: kNormalTextStyle13,
            label: StringConstant.signOut,
          ),
        ],
      ),
    );
  }
}
