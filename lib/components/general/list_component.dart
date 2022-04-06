import 'package:flutter/material.dart';

/// TODO: Change the name, this is the susbecius file
class ListComponent extends StatelessWidget {
  const ListComponent({
    required this.text,
    this.onPressed,
    this.height,
    this.passedColor,
    this.passedIcon,
  });

  final String text;
  final VoidCallback? onPressed;

  /// TODO: make the height default
  ///

  final double? height;
  final Color? passedColor;
  final Icon? passedIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPressed,
      child: Container(
        padding: const EdgeInsets.all(15),
        height: this.height,
        color: passedColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(this.text),
            passedIcon!,
          ],
        ),
      ),
    );
  }
}
