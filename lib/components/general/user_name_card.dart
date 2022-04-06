import 'package:flutter/material.dart';
import 'package:gentleknn/components/general/buttons/sign_out_button.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/constants/string_constant.dart';
import 'package:gentleknn/utilities/default_values.dart';
import 'package:gentleknn/utilities/size_config.dart';

//TODO: Color of the button.
//TODO: This arguments is to be fixed latter.

class UserNameCard extends StatelessWidget {
  UserNameCard({
    this.userImage,
    this.userName,
    this.userID,
    this.onSignInOut,
  });

  final String? userImage;
  final String? userName;
  final String? userID;
  final VoidCallback? onSignInOut;

  Widget chooseUserImage() {
    var image = userImage == null
        ? Icon(
            Icons.account_circle_rounded,
            size: 40,
          )
        : ImageIcon(
            AssetImage(userImage ?? DefaultValues.userImage),
            size: 40,
          );
    return image;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.all(14),
      margin: EdgeInsets.only(left: 15.0, right: 10.0),
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              chooseUserImage(),
              SizedBox(
                width: 5.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hello,',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  userName == null
                      ? Text(
                          'Welcome to KFUPM Clubs',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      : Text(
                          userName ?? DefaultValues.emptyString,
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                  userID == null
                      ? Text(
                          'Please Sign in to navigate your clubs',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black45,
                          ),
                        )
                      : Text(
                          userID ?? DefaultValues.emptyString,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black45,
                          ),
                        ),
                ],
              ),
            ],
          ),
          Positioned(
            right: 1.0,
            top: 10.0,
            child: userID == null
                ? SignOutButton(
                    label: StringConstant.signIn,
                    onPressed: onSignInOut,
                  )
                : SignOutButton(
                    label: StringConstant.signOut,
                    onPressed: onSignInOut,
                  ),
          )
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
