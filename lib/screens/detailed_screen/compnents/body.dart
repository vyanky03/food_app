import 'package:flutter/material.dart';
import 'package:food_app/contants.dart';
import 'package:food_app/screens/detailed_screen/compnents/item_image.dart';
import 'package:food_app/screens/detailed_screen/compnents/order_button.dart';
import 'package:food_app/screens/detailed_screen/compnents/title_price_rating.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        ItemImage(imgSrc: 'assets/images/burger.png'),
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopName(name: "McDonald's"),
          const TitlePriceRating(
            name: 'Cheese Burger',
            numOfReviews: 24,
            price: 15,
            rating: 4,
          ),
          const Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
          SizedBox(
            height: size.height * 0.1,
          ),
          OrderButton(
            size: size,
            press: () {},
          )
        ],
      ),
    );
  }

  Row shopName({required String name}) {
    return Row(
      children: <Widget>[
        const Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        const SizedBox(width: 10),
        Text(name)
      ],
    );
  }
}
