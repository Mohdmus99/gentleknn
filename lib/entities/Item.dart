import 'package:flutter/material.dart';
// TODO: Name Item better name

class Item {
  Item({
    required this.icon,
     this.title,
    this.activeIcon,
  });

  // An icon to display.
  final Widget icon;

  // An icon to display when this tab bar is active.
  final Widget? activeIcon;

  // Text to display, ie `Home`
  final Widget? title;
}
