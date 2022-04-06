import 'package:flutter/material.dart';
import 'package:gentleknn/constants/string_constant.dart';
import 'package:gentleknn/entities/club.dart';
import 'package:gentleknn/components/club/large_club_card.dart';
import 'package:gentleknn/components/club/small_club_card.dart';

class MiniClubsListFragment extends StatelessWidget {
  MiniClubsListFragment({
    required this.clubs,
  });

  final List<Text> clubs;
  // --->
  // final List<Club> clubs;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: clubs.length,
        itemBuilder: (context, index) {
          return Text("");

          //   SmallClubCard(
          //   club: clubs[index],
          //   memberRole: StringConstant.member,
          // );
        },
      ),
    );
  }
}
