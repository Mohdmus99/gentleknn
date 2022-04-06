import 'package:flutter/cupertino.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:flutter/material.dart';

class DefaultValues {
  static String emptyString = '';
  static Function emptyFunction = () {};
  static VoidCallback emptyCallBack = () {};
  static void Function(dynamic) emptyDynamicCallBack = (dynamic) {};

  static String groupImage = 'assets/images/default_group_image.png';
  static String userImage = 'assets/images/default_user_image.png';

  static Color color = primaryColor;
  static Color whiteColor = Colors.white;
  static Color fontColor = Colors.black;
  static Color blackColor = Colors.black;
  static List<Color> colorList = [primaryColor, primaryColor];

  static List<BoxShadow> shadow = [BoxShadow(), BoxShadow()];

  static TextEditingController controller = TextEditingController();
}
