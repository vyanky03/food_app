import 'package:flutter/material.dart';
import 'package:food_app/components/search_box.dart';
import 'package:food_app/contants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: <Widget>[
                  const Text(
                    'Combo Meal',
                    style: TextStyle(
                        color: ktextColor, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    height: 3,
                    width: 22,
                    decoration: BoxDecoration(
                        color: kprimaryColor,
                        borderRadius: BorderRadius.circular(10)),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
