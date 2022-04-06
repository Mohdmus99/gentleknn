// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:kfupm_clubs/components/general/list_component.dart';
// import 'package:kfupm_clubs/constants/constants.dart';
// import 'package:kfupm_clubs/entities/student.dart';
//
// class StudentSearch extends StatefulWidget {
//   StudentSearch({@required this.student});
//
//   final List<Student> student;
//
//   @override
//   _StudentSearchState createState() => _StudentSearchState();
// }
//
// // TODO: what values to return and add submit button.
//
// class _StudentSearchState extends State<StudentSearch> {
//   List<Student> chooseStudents = [];
//   List<Color> widgetColor = [];
//
//   void chooseStudent(int index) {
//     if (widgetColor[index] == Colors.blueGrey) {
//       widgetColor[index] = Colors.green;
//       chooseStudents[index] = widget.student[index];
//     } else {
//       widgetColor[index] = Colors.blueGrey;
//       chooseStudents.removeAt(index);
//     }
//   }
//
//   void initWidgetColor(int index) {
//     widgetColor = List.generate(index, (index) => Colors.blueGrey);
//     chooseStudents = List.generate(index, (index) => null);
//   }
//
//   @override
//   void initState() {
//     initWidgetColor(widget.student.length);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Assign student(s)'),
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             ListView.builder(
//               shrinkWrap: true,
//               itemCount: widget.student.length,
//               itemBuilder: (context, index) {
//                 return ListComponent(
//                   text: widget.student[index].firstName +
//                       widget.student[index].lastName,
//                   passedIcon: Icon(
//                     Icons.add,
//                     color: secondaryColor,
//                   ),
//                   onTap: () {
//                     setState(() {
//                       chooseStudent(index);
//                     });
//                   },
//                   passedColor: widgetColor[index],
//                 );
//               },
//             ),
//             TextButton(
//               onPressed: () {
//                 //To remove the nulls before returning it.
//                 chooseStudents.removeWhere((value) => value == null);
//                 //To return the chooseStudent Array.
//                 Navigator.pop(context, chooseStudents);
//               },
//               child: Text('Done!'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
