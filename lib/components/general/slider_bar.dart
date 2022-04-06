import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/entities/Item.dart';
import 'package:gentleknn/utilities/default_values.dart';

class SliderBar extends StatelessWidget {
  SliderBar({
    required this.onTap,
    this.currentIndex = 0,
    required this.items,
  });

  // The tab to display.
  final int currentIndex;

  // Returns the index of the tab that was tapped.
  final Function(int) onTap;

  // Th list of the items
  final List<Item> items;

  // A convenience field for the margin surrounding the entire widget.
  final EdgeInsets margin = const EdgeInsets.fromLTRB(0, 0, 30, 0);

  // The padding of each item.
  final EdgeInsets itemPadding =
      const EdgeInsets.symmetric(vertical: 15, horizontal: 15);

  // The transition curve
  final Curve curve = Curves.easeOutQuint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (final item in items)
            TweenAnimationBuilder<double>(
              tween: Tween(
                end: items.indexOf(item) == currentIndex ? 1.0 : 0.0,
              ),
              curve: curve,
              duration: const Duration(milliseconds: 500),
              builder: (context, t, _) {
                final _selectedColor = secondaryColor;
                final _unselectedColor = Colors.grey;

                return Material(
                  shape: StadiumBorder(),
                  child: InkWell(
                    // onTap: () => onTap?.call(items.indexOf(item)),
                    onTap: () => onTap.call(items.indexOf(item)),
                    customBorder: StadiumBorder(),
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconTheme(
                          data: IconThemeData(
                            color:
                                Color.lerp(_unselectedColor, _selectedColor, t),
                            size: 40,
                          ),
                          child: items.indexOf(item) == currentIndex
                              ? item.activeIcon ?? item.icon
                              : item.icon,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: itemPadding.left,
                            right: itemPadding.right,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 4.0,

                                /// TODO: Might be an error.
                                color: Color.lerp(
                                    _unselectedColor, _selectedColor, t)!,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: itemPadding.left,
                              right: itemPadding.right,
                            ),
                            child: DefaultTextStyle(
                              style: TextStyle(
                                color: Color.lerp(
                                    _unselectedColor, _selectedColor, t),
                                fontWeight: FontWeight.w600,
                              ),
                              child:
                                  item.title ?? Text(DefaultValues.emptyString),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
