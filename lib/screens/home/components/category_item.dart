import 'package:flutter/material.dart';
import 'package:food_app/contants.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;

  const CategoryItem({
    super.key,
    required this.title,
    this.isActive = false,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: <Widget>[
            Text(title,
                style: isActive
                    ? const TextStyle(
                        color: ktextColor, fontWeight: FontWeight.bold)
                    : const TextStyle(fontSize: 12)),
            if (isActive)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                    color: kprimaryColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
          ],
        ),
      ),
    );
  }
}
