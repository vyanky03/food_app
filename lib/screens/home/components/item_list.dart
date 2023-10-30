import 'package:flutter/material.dart';
import 'package:food_app/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            title: 'Burger & Beer',
            shopName: "McDonald's",
            svgSrc: 'assets/icons/burger_beer.svg',
            press: () {},
          ),
          ItemCard(
            title: 'Noodels',
            shopName: "Wendy's",
            svgSrc: 'assets/icons/chinese_noodles.svg',
            press: () {},
          ),
          ItemCard(
            title: 'Burger & Beer',
            shopName: "McDonald's",
            svgSrc: 'assets/icons/burger_beer.svg',
            press: () {},
          ),
        ],
      ),
    );
  }
}
