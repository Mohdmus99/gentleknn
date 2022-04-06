import 'package:flutter/material.dart';
import 'package:gentleknn/constants/string_constant.dart';
import 'package:gentleknn/entities/club.dart';
import 'package:gentleknn/utilities/default_values.dart';
import 'package:gentleknn/utilities/size_config.dart';
import 'package:gentleknn/components/general/buttons/horizental_button.dart';
import 'package:gentleknn/constants/constants.dart';

class LargeClubCard extends StatelessWidget {
  LargeClubCard({
    required this.club,
    required this.isClubOpen,
    required this.isAdministrator,
    this.image,
    this.onJoin,
    this.onViewClub,
    this.onSettings,
  });

  final Club club;
  final bool isClubOpen;
  final bool isAdministrator;
  final String? image;
  final VoidCallback? onJoin;
  final VoidCallback? onViewClub;
  final VoidCallback? onSettings;

  Widget _getButton() {
    if (isAdministrator) {
      return HorizontalButton(
        label: StringConstant.settings,
        buttonColor: yellowGreenGradients,
        fontColor: Colors.white,
        onPressed: onSettings ?? DefaultValues.emptyCallBack,
      );
    } else if (isClubOpen) {
      return HorizontalButton(
        label: StringConstant.join,
        buttonColor: yellowGreenGradients,
        fontColor: Colors.white,
        onPressed: onJoin ?? DefaultValues.emptyCallBack,
      );
    } else {
      return HorizontalButton(
        label: StringConstant.closed,
        buttonColor: [Colors.grey, Colors.grey],
        fontColor: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
              child: Image.asset(image ?? DefaultValues.groupImage),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: kBoxShadow3Opacity,
              ),
            ),
          ),
          Text(
            club.clubName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
          ),
          Row(
            children: [
              Icon(
                Icons.group_sharp,
                color: Colors.grey,
              ),
              Text(
                " " + club.memberCount.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
                " Members",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 3.0),
              child: Text(
                club.description,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _getButton(),
              HorizontalButton(
                label: 'View Club',
                buttonColor: blueGradients,
                fontColor: Colors.white,
                onPressed: onViewClub ?? DefaultValues.emptyCallBack,
              )
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(19.0),
        boxShadow: kBoxShadow4Opacity,
      ),
      height: SizeConfig.screenHeight! / 2.5,
    );
  }
}
