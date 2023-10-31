import 'package:flutter/material.dart';
import 'package:food_app/contants.dart';
import 'package:food_app/screens/detailed_screen/compnents/app_bar.dart';
import 'package:food_app/screens/home/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      appBar: detailsAppBar(),
      body: const Body(),
    );
  }
}
