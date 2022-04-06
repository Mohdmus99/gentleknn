import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/entities/Item.dart';

class MiddleNavigationBar extends StatelessWidget {
  MiddleNavigationBar({
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

  // The color of the icon and text when the item is selected.
  final Color selectedItemColor = Colors.white;

  // A convenience field for the margin surrounding the entire widget.
  final EdgeInsets margin = const EdgeInsets.fromLTRB(0, 0, 0, 0);

  // The padding of each item.
  final EdgeInsets itemPadding =
      const EdgeInsets.symmetric(vertical: 7, horizontal: 9);

  // The transition curve
  final Curve curve = Curves.easeOutQuint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
        boxShadow: kBoxShadow1,
      ),
      child: Padding(
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
                  final _selectedColor = primaryColor;
                  final _unselectedColor = Colors.grey;
                  return Material(
                    color: Color.lerp(
                        _selectedColor.withOpacity(0.0), _selectedColor, t),
                    shape: StadiumBorder(),
                    child: InkWell(
                      onTap: () => onTap.call(items.indexOf(item)),
                      customBorder: StadiumBorder(),
                      focusColor: _selectedColor,
                      highlightColor: _selectedColor,
                      splashColor: _selectedColor,
                      hoverColor: _selectedColor,
                      child: Container(
                        padding: EdgeInsets.only(
                          top: itemPadding.top - 2,
                          bottom: itemPadding.bottom - 2,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            IconTheme(
                              data: IconThemeData(
                                color: Color.lerp(
                                    _unselectedColor, secondaryColor, t),
                                size: 24,
                              ),
                              child: items.indexOf(item) == currentIndex
                                  ? item.activeIcon ?? item.icon
                                  : item.icon,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
