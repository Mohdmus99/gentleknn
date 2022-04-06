import 'package:flutter/material.dart';
import 'package:gentleknn/constants/string_constant.dart';
import 'package:gentleknn/utilities/default_values.dart';
import 'package:gentleknn/utilities/size_config.dart';
import 'package:gentleknn/entities/club.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/components/general/buttons/popup_menu_button_x.dart';

class SmallClubCard extends StatelessWidget {
  const SmallClubCard({
    required this.club,
    this.onPressed,
    required this.memberRole,
  });

  final Club club;
  final VoidCallback? onPressed;
  final String memberRole;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      child: Container(
        height: SizeConfig.screenHeight! * 0.4,
        width: SizeConfig.screenHeight! * 0.25,
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Positioned(
                  right: 5.0,
                  child: Container(
                    child: PopUpMenuButtonX(
                      popUpMenuItems: [
                        PopupMenuItem(
                          child: Text(
                            StringConstant.leaveClub,
                            style: TextStyle(color: Colors.red),
                          ),
                          value: 2,
                        )
                      ],
                      onSelect: (value) {
                        print(value);
                        switch (value) {
                          case 1:
                            {
                              ///TODO: Procedure to remove an Event.
                            }
                            break;
                          case 2:
                            {
                              ///TODO: Procedure to edit an Event.

                            }
                            break;
                        }
                      },
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(55.0),
                      color: Colors.white.withOpacity(0.13),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Container(
              height: SizeConfig.screenHeight! * 0.1,
              width: SizeConfig.screenHeight! * 0.1,
              child: Image.asset(
                club.imageUrl,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: kBoxShadow1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '${StringConstant.club}:',
                  style: kNormalBoldTextStyle15,
                ),
                Expanded(
                  child: Text(
                    ' ' + club.clubName,
                    style: kNormalTextStyle13,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '${StringConstant.role}:',
                  style: kNormalBoldTextStyle15,
                ),
                Text(
                  ' ' + memberRole,
                  style: kNormalTextStyle13,
                ),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: kBoxShadow1,
        ),
      ),
      onTap: onPressed ?? DefaultValues.emptyCallBack,
    );
  }
}
