import 'package:flutter/material.dart';
import 'package:gentleknn/components/committee/task_card.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/constants/string_constant.dart';
import 'package:gentleknn/entities/club.dart';
import 'package:gentleknn/components/club/large_club_card.dart';
import 'package:gentleknn/entities/committee.dart';
import 'package:gentleknn/entities/task.dart';
// import 'package:gentleknn/screens/committee/committee_main_screen.dart';
import 'package:gentleknn/utilities/size_config.dart';
import 'package:gentleknn/components/general/list_component.dart';

class CommitteesListFragment extends StatelessWidget {
  CommitteesListFragment({
    required this.committees,
    this.onAddCommittee,
  });

  final List<Committee> committees;
  final VoidCallback? onAddCommittee;

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
              Text(
                StringConstant.committee,
                style: kNormalBoldTextStyle20,
              ),
              onAddCommittee == null
                  ? Text('')
                  : GestureDetector(
                      child: Text(
                        "+Add Committee",
                        style: kNormalBoldTextStyleOrange15,
                      ),
                      onTap: onAddCommittee,
                    )
            ],
          ),
        ),
        Container(
          height: SizeConfig.screenHeight! / 2,
          child: ListView.builder(
              itemCount: committees.length,
              itemBuilder: (BuildContext context, int index) {
                return ListComponent(
                  text: committees[index].committeeName,
                  height: SizeConfig.screenHeight! / 10,
                  passedColor: index % 2 == 0 ? Colors.white : Colors.black12,
                  passedIcon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: secondaryColor,
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => CommitteeMainScreen(
                    //       committee: Committee(123, 221, "Photoshob",
                    //           "_committeeDescription", 232),
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
                );
              }),
        ),
      ],
    );
  }
}
