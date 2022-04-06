import 'package:flutter/material.dart';

/// TODO: Should we split this file?
/// TODO: Refactor box shadow for all the project, to be monitored from here.
///
/* Colors Constants*/

const List<Color> yellowGreenGradients = [
  Color(0xFFA7F84D),
  Color(0xFF00D485),
];

const List<Color> blueGradients = [
  Color(0xFF00CEFD),
  Color(0xFF305EC8),
];

const List<Color> goldGradients = [
  Color(0xFFFDD93D),
  Color(0xFFF18E3B),
];

const Color primaryColor = Color(0xFFFADA3C);

const Color secondaryColor = Color(0xFFB46B4D);
const Color thirdColor = Color(0xFF8B4300);

const List<Color> primaryGradient = [primaryColor, secondaryColor];

/* TextStyle Constants*/

const TextStyle kNormalBoldTextStyle15 = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
  fontSize: 15.0,
);

const TextStyle kNormalBoldTextStyle20 = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
);

const TextStyle kNormalBoldTextStyle30 = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
  fontSize: 30.0,
);

const TextStyle kNormalBoldTextStyleOrange15 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 15.0,
    color: Colors.orange);

const TextStyle kNormalTextStyle15 = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 15.0,
);

const TextStyle kNormalBoldTextStyle13 = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
  fontSize: 13.0,
);

const TextStyle kNormalTextStyle13 = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 13.0,
);

/* BoxShadow Constants*/

List<BoxShadow> kBoxShadow1 = [
  BoxShadow(
    color: Colors.grey,
    offset: Offset(0.0, 1.0), //(x,y)
    blurRadius: 3.0,
  ),
];

List<BoxShadow> kBoxShadow1Opacity = [
  BoxShadow(
    color: Colors.grey,
    offset: Offset(0.0, 1.0), //(x,y)
    blurRadius: 3.0,
  ),
];

List<BoxShadow> kBoxShadow2 = [
  BoxShadow(
    color: Colors.grey,
    spreadRadius: 2.0,
    offset: Offset(0.0, 2.0), //(x,y)
    blurRadius: 3.0,
  ),
];
List<BoxShadow> kBoxShadow2Opacity = [
  BoxShadow(
    color: Colors.grey,
    spreadRadius: 2.0,
    offset: Offset(0.0, 2.0), //(x,y)
    blurRadius: 3.0,
  ),
];

List<BoxShadow> kBoxShadow3 = [
  BoxShadow(
    color: Colors.grey,
    spreadRadius: 3,
    blurRadius: 3,
    offset: Offset(0, 3), // changes position of shadow
  ),
];

List<BoxShadow> kBoxShadow3Opacity = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.2),
    spreadRadius: 3,
    blurRadius: 3,
    offset: Offset(0, 3), // changes position of shadow
  ),
];

List<BoxShadow> kBoxShadow4 = [
  BoxShadow(
    color: Colors.grey,
    spreadRadius: 4,
    blurRadius: 5,
    offset: Offset(0, 3), // changes position of shadow
  ),
];

List<BoxShadow> kBoxShadow4Opacity = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.25),
    spreadRadius: 4,
    blurRadius: 5,
    offset: Offset(0, 3), // changes position of shadow
  ),
];

List<BoxShadow> kBoxShadow5 = [
  BoxShadow(
    color: Colors.grey,
    spreadRadius: 5,
    blurRadius: 7,
    offset: Offset(0, 3), // changes position of shadow
  ),
];

List<BoxShadow> kBoxShadow5Opacity = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: Offset(0, 3), // changes position of shadow
  ),
];

List<BoxShadow> kBoxShadow6 = [
  BoxShadow(
    color: Colors.grey,
    blurRadius: 5.0,
    spreadRadius: 1.0,
    offset: Offset(0, 4),
  )
];

List<BoxShadow> kBoxShadow6Opacity = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    blurRadius: 5.0,
    spreadRadius: 1.0,
    offset: Offset(0, 4),
  )
];
