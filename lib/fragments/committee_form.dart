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
import 'package:gentleknn/utilities/image_picking.dart';
import 'package:gentleknn/components/general/border_text_field.dart';

class CommitteeForm extends StatefulWidget {
  CommitteeForm({
    this.onSubmit,
  });

  final VoidCallback? onSubmit;

  @override
  _CommitteeFormState createState() => _CommitteeFormState();
}

class _CommitteeFormState extends State<CommitteeForm> {
  DateTime? dateSelected;
  File? imagePath;
  List<Student>? chooseStudents;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BorderTextField(
            color: primaryColor,
            label: StringConstant.committeeName,
            isRequiredStar: true,
          ),
          BorderTextField(
            color: primaryColor,
            label: StringConstant.committeeDescription,
            isRequiredStar: true,
          ),

          ///TODO: ADD A SEARCH GENERATOR THAT SEARCH FOR STUDENT NAMES AND THEIR IDs.
          BorderTextField(
            color: primaryColor,
            label: 'Committee Leader Id',
            isRequiredStar: true,
          ),

          BigHorizontalButton(
            label: 'Add Committee',
            fontColor: Colors.white,
            buttonColor: [Colors.green, Colors.green],
            onPressed: widget.onSubmit,
          )
        ],
      ),
    );
  }
}

//old committee form

// import 'package:flutter/material.dart';
// import 'package:gentleknn/components/general/buttons/mini_horizantal_button.dart';
// import 'package:gentleknn/components/general/text_field.dart';
//
// class CommitteeForm extends StatefulWidget {
//   const CommitteeForm({
//     @required this.controllerOne,
//   });
//
//   final TextEditingController controllerOne;
//
//   @override
//   _CommitteeFormState createState() => _CommitteeFormState();
// }
//
// // TODO: needs more work since there are many things that are not clear.
//
// class _CommitteeFormState extends State<CommitteeForm> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//           children:[
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Title:',
//                 ),
//                 CustomizedTextField(
//                   myController: widget.controllerOne,
//                 ),
//               ],
//             ),
//             MiniHorizantleButton(
//               lable: 'Submit',
//               buttonCollr: Colors.green,
//               fontColor: Colors.black,
//               onPressed: (){},
//             ),
//           ],
//       ),
//     );
//   }
// }
