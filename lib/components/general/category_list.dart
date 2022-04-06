import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/entities/category.dart';

///TODO:The list of category should be passed as an argument.

class CategoryList extends StatefulWidget {
  CategoryList({
    required this.categories,
  });
  final List<Category> categories;

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  //List of categories
  // List<Category> categories = [
  //   Category(icon: Icons.list, categoryName: "All"),
  //   Category(icon: Icons.laptop, categoryName: "Technology"),
  //   Category(icon: Icons.pie_chart, categoryName: "Business"),
  //   Category(icon: Icons.school_rounded, categoryName: "Help Sessions"),
  // ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (context, index) {
          return (categoryBadge(index));
        },
      ),
    );
  }

  GestureDetector categoryBadge(int i) {
    final Color defaultColor = Colors.black.withOpacity(.7);
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = i;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          color: selectedIndex == i ? primaryColor : Colors.black12,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.categories[i].icon,
                color: selectedIndex == i ? secondaryColor : defaultColor,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                widget.categories[i].categoryName,
                style: TextStyle(
                    color: selectedIndex == i ? secondaryColor : defaultColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
