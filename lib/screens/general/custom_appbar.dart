import 'package:flutter/material.dart';
import 'package:gentleknn/components/general/user_name_card.dart';
import 'package:gentleknn/constants/constants.dart';

class CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 45, left: 25, right: 25, bottom: 10),
            color: primaryColor,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: Colors.white.withAlpha(100),
                  borderRadius: BorderRadius.circular(25)),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Here',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            height: 90,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: UserNameCard(
                    userID: '201712345',
                    userName: 'Hussain',
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
