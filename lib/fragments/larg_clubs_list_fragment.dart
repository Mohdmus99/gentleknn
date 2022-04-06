import 'package:flutter/material.dart';
import 'package:gentleknn/entities/club.dart';
import 'package:gentleknn/components/club/large_club_card.dart';
// import 'package:gentleknn/screens/club/club_form_screen.dart';
// import 'package:gentleknn/screens/club/club_main_screen.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/utilities/default_values.dart';
import 'package:gentleknn/utilities/size_config.dart';

class LargeClubsListFragment extends StatelessWidget {
  LargeClubsListFragment(
      {required this.clubs,
      this.label,
      this.onAddClub,
      required this.isAdministrator,
      required this.isClubOpen});

  final List<Club> clubs;
  final String? label;
  final VoidCallback? onAddClub;
  final bool isAdministrator;
  final bool isClubOpen;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(7.0),
          margin: EdgeInsets.only(left: 5.0, right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              label == null
                  ? Text('')
                  : Text(
                      label ?? DefaultValues.emptyString,
                      style: kNormalBoldTextStyle20,
                    ),
              onAddClub == null
                  ? Text('')
                  : GestureDetector(
                      child: Text(
                        "+Add Club",
                        style: kNormalBoldTextStyleOrange15,
                      ),
                      onTap: onAddClub,
                    ),
            ],
          ),
        ),
        Container(
          height: SizeConfig.screenHeight! / 1.6,
          child: ListView.builder(
            itemCount: clubs.length,
            itemBuilder: (context, index) {
              return LargeClubCard(
                club: Club(
                    'Robotics Club',
                    'assets/images/roboticsClub.PNG',
                    "1222",
                    "1332",
                    'this is the club of robtocis inkfupm ',
                    12),
                isClubOpen: isClubOpen,
                isAdministrator: isAdministrator,
                image: clubs[index].imageUrl,
                onViewClub: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ClubMainScreen(
                  //       club: Club(
                  //           'Robotics Club',
                  //           'assets/images/roboticsClub.PNG',
                  //           "1222",
                  //           "1332",
                  //           'this is the club of robtocis inkfupm ',
                  //           12),
                  //     ),
                  //   ),
                  // );
                },
                onJoin: () {
                  ///TODO: Here is the code for the user to join a club.
                },
                onSettings: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ClubFormScreen(
                  //       club: clubs[index],
                  //     ),
                  //   ),
                  // );

                  ///TODO: Here is the code for the administrator to edit the club info.
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
