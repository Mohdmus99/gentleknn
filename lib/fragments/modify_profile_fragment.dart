import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gentleknn/components/general/text_field.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/constants/string_constant.dart';
import 'package:gentleknn/entities/student.dart';
import 'package:gentleknn/utilities/image_picking.dart';
import '../components/general/buttons/customized_button.dart';

class ModifyProfileFragment extends StatelessWidget {
  ModifyProfileFragment({
    this.student,
  });

  final Student? student;

  @override
  Widget build(BuildContext context) {
    /// TODO: Find better solution.
    // final TextEditingController firstNameController =
    // TextEditingController();
    // final TextEditingController kfupmIdController =
    // TextEditingController();
    // final TextEditingController usernameController =
    // TextEditingController();
    // final TextEditingController phoneController =
    // TextEditingController();
    // final TextEditingController birthdayController =
    // TextEditingController();

    TextEditingController firstNameController = TextEditingController();
    TextEditingController kfupmIdController = TextEditingController();
    TextEditingController usernameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController birthdayController = TextEditingController();

    if (student != null) {
      firstNameController =
          TextEditingController(text: student!.firstName + student!.lastName);
      kfupmIdController = TextEditingController(text: student!.kfupmId);
      usernameController = TextEditingController(text: student!.userName);
      phoneController = TextEditingController(text: student!.phone);
      birthdayController = TextEditingController(text: student!.birthDay);
    }

    File imagePath;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Row(
                children: [
                  Text(
                    '${StringConstant.image}:',
                  ),
                  CustomizedButton(
                    buttonColor: primaryGradient,
                    height: 15.0,
                    width: 4.0,
                    onPressed: () async {
                      imagePath = await imagePicking();
                    },
                    radius: 20.0,
                    textStyle: kNormalTextStyle13,
                    label: 'Choose Image',
                  ),
                ],
              ),
              TextFieldX(
                controller: firstNameController,
                label: 'Name',
              ),
              TextFieldX(
                controller: kfupmIdController,
                label: StringConstant.kfupmEmail,
              ),
              TextFieldX(
                controller: usernameController,
                label: StringConstant.username,
              ),
              TextFieldX(
                controller: phoneController,
                label: StringConstant.phone,
              ),
              TextFieldX(
                controller: birthdayController,
                label: StringConstant.birthday,
              ),
              Center(
                child: CustomizedButton(
                  buttonColor: [primaryColor, primaryColor],
                  height: 12.0,
                  width: 3.0,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  radius: 20.0,
                  textStyle: kNormalTextStyle13,
                  label: StringConstant.update,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
