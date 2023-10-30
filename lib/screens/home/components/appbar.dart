import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/contants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
        onPressed: () {}, icon: SvgPicture.asset('assets/icons/menu.svg')),
    title: Align(
      alignment: Alignment.center,
      child: RichText(
          text: TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
              children: const [
            TextSpan(
              text: 'Punk',
              style: TextStyle(color: ksecondaryColor),
            ),
            TextSpan(text: 'Food', style: TextStyle(color: kprimaryColor)),
          ])),
    ),
    actions: <Widget>[
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/notification.svg'))
    ],
  );
}
