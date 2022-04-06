import 'package:flutter/material.dart';
import 'package:gentleknn/components/general/buttons/horizental_button.dart';
import 'package:gentleknn/components/general/buttons/mini_horizantal_button.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/constants/string_constant.dart';
import 'package:gentleknn/entities/request.dart';
import 'package:gentleknn/utilities/size_config.dart';
import 'package:gentleknn/utilities/default_values.dart';

class RequestCard extends StatelessWidget {
  RequestCard({
    required this.request,
    this.onRefuse,
    this.onAccept,
  });

  final Request request;
  final VoidCallback? onRefuse;
  final VoidCallback? onAccept;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      height: SizeConfig.screenHeight! / 5,
      width: SizeConfig.screenWidth! / 1.5,
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      margin: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              request.title,
              style: kNormalBoldTextStyle20,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Flexible(
            child: Text(
              request.description,
              style: kNormalBoldTextStyle13,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BigHorizontalButton(
                label: StringConstant.accept,
                buttonColor: [Colors.green, Colors.green],
                fontColor: Colors.white,
                onPressed: onAccept ?? DefaultValues.emptyCallBack,
              ),
              BigHorizontalButton(
                label: StringConstant.refuse,
                buttonColor: [Colors.red, Colors.red],
                fontColor: Colors.white,
                onPressed: onRefuse ?? DefaultValues.emptyCallBack,
              ),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: kBoxShadow1,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(21),
          bottomLeft: Radius.circular(21),
        ),
      ),
    );
  }
}
