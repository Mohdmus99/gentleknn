import 'package:flutter/material.dart';
import 'package:gentleknn/components/general/buttons/circular_icon_button.dart';
import 'dart:io';
import 'package:gentleknn/components/general/buttons/customized_button.dart';
import 'package:gentleknn/components/general/buttons/horizental_button.dart';
import 'package:gentleknn/components/general/buttons/mini_horizantal_button.dart';
import 'package:gentleknn/components/general/student_search.dart';
import 'package:gentleknn/components/general/text_field.dart';
import 'package:gentleknn/constants/string_constant.dart';
import 'package:gentleknn/utilities/date_picker.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/entities/student.dart';
import 'package:gentleknn/utilities/default_values.dart';
import 'package:gentleknn/utilities/image_picking.dart';
import 'package:gentleknn/components/general/border_text_field.dart';
import 'package:gentleknn/entities/club.dart';

class ClubForm extends StatefulWidget {
  ClubForm({
    this.club,
    this.onSubmit,
  });

  final Club? club;
  final VoidCallback? onSubmit;

  @override
  _ClubFormState createState() => _ClubFormState();
}

class _ClubFormState extends State<ClubForm> {
  DateTime? dateSelected;
  File? imagePath;
  List<Student>? chooseStudents;

  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerOne = TextEditingController();
    final TextEditingController controllerTwo = TextEditingController();

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 5.0,
          ),
          widget.club == null
              ? Text('')
              : Container(
                  padding: EdgeInsets.all(3.0),
                  child: Container(
                    padding: EdgeInsets.all(7.0),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(widget.club!.imageUrl),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    height: 120.0,
                    width: 120.0,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  height: 120.0,
                  width: 120.0,
                ),

          BorderTextField(
            color: primaryColor,
            label: StringConstant.clubName,
            isRequiredStar: true,
            hintText: widget.club == null ? '' : widget.club!.clubName,
          ),
          BorderTextField(
            color: primaryColor,
            label: StringConstant.clubDescription,
            isRequiredStar: true,
            hintText: widget.club == null ? '' : widget.club!.description,
          ),

          ///TODO: ADD A SEARCH GENERATOR THAT SEARCH FOR STUDENT NAMES AND THEIR IDs.
          BorderTextField(
            color: primaryColor,
            label: StringConstant.clubId,
            isRequiredStar: true,
            hintText: widget.club == null ? '' : widget.club!.clubID,
            enabled: widget.club == null ? true : false,
          ),
          BorderTextField(
            color: primaryColor,
            label: 'Club Leader id',
            isRequiredStar: true,
            hintText: widget.club == null ? '' : widget.club!.clubID,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircularIconButton(
                icon: Icons.photo_outlined,
                circleColor: primaryColor,
                onPressed: () async {
                  imagePath = await imagePicking();
                },
                isRequiredStar: true,
              ),
              Text(
                widget.club == null ? 'Upload Image' : 'Change Image',
                style: kNormalTextStyle13.copyWith(
                  fontSize: 9.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          BigHorizontalButton(
            label: widget.club == null ? 'Add Club' : 'Update Club',
            fontColor: Colors.white,
            buttonColor: [Colors.green, Colors.green],
            onPressed: widget.onSubmit ?? DefaultValues.emptyCallBack,
          )
        ],
      ),
    );
  }
}
