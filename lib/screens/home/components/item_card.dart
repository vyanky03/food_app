import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/contants.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, svgSrc;
  final VoidCallback press;
  const ItemCard({
    super.key,
    required this.title,
    required this.shopName,
    required this.svgSrc,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 20, 15, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 20,
            color: const Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: kprimaryColor.withOpacity(0.13),
                      shape: BoxShape.circle),
                  child: SvgPicture.asset(svgSrc, width: size.width * 0.18),
                ),
                Text(title),
                const SizedBox(height: 10),
                Text(
                  shopName,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
