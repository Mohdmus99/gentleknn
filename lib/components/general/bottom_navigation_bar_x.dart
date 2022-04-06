import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/entities/Item.dart';
import 'package:gentleknn/utilities/default_values.dart';

class BottomNavigationBarX extends StatelessWidget {
  BottomNavigationBarX({
    required this.onTap,
    required this.items,
    this.currentIndex = 0,
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
  final EdgeInsets margin = const EdgeInsets.fromLTRB(8, 8, 8, 28);

// The padding of each item.
  final EdgeInsets itemPadding =
      const EdgeInsets.symmetric(vertical: 10, horizontal: 16);

// The transition curve
  final Curve curve = Curves.easeOutQuint;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
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
                      child: Padding(
                        padding: itemPadding -
                            EdgeInsets.only(right: itemPadding.right * t),
                        child: Row(
                          children: [
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
                            ClipRect(
                              child: SizedBox(
                                height: 20,
                                child: Align(
                                  alignment: Alignment(-0.2, 0.0),
                                  widthFactor: t,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: itemPadding.right / 2,
                                        right: itemPadding.right),
                                    child: DefaultTextStyle(
                                      style: TextStyle(
                                        color: Color.lerp(
                                            _selectedColor, secondaryColor, t),
                                        fontWeight: FontWeight.w600,
                                      ),
                                      child: item.title ??
                                          Text(DefaultValues.emptyString),
                                    ),
                                  ),
                                ),
                              ),
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
