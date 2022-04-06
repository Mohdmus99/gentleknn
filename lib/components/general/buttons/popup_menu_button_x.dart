import 'package:flutter/material.dart';
import 'package:gentleknn/utilities/default_values.dart';

class PopUpMenuButtonX extends StatelessWidget {
  PopUpMenuButtonX({
    required this.popUpMenuItems,
    this.onSelect,
  });

  final List<PopupMenuItem> popUpMenuItems;
  final void Function(dynamic)? onSelect;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => popUpMenuItems,
      onSelected: onSelect ?? DefaultValues.emptyDynamicCallBack,
    );
  }
}

//Example...

// PopupMenuButton(
// itemBuilder: (context) => [
// PopupMenuItem(
// child: Text("Remove Event"),
// value: 1,
// ),
// PopupMenuItem(
// child: Text("Edit Event"),
// value: 2,
// )
// ],
// onSelected: (value) {
// print(value);
// },
// );
