import 'package:flutter/material.dart';
import 'package:food_app/screens/home/components/appbar.dart';
import 'package:food_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: const Body(),
    );
  }
}
