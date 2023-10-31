import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/contants.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    super.key,
    required this.size,
    required this.press,
  });
  final Function press;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      decoration: const BoxDecoration(color: kprimaryColor),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          // onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset('assets/icons/bag.svg'),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Oder Now',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
