import 'package:flutter/material.dart';
import 'package:food_app/components/search_box.dart';
import 'package:food_app/screens/home/components/category_list.dart';
import 'package:food_app/screens/home/components/discount_card.dart';
import 'package:food_app/screens/home/components/item_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        const CategoryList(),
        const ItemList(),
        const DiscountCard(),
      ],
    );
  }
}
