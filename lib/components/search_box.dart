import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/contants.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(40)),
            border: Border.all(color: ksecondaryColor.withOpacity(0.32))),
        child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
              border: InputBorder.none,
              icon: SvgPicture.asset('assets/icons/search.svg'),
              hintText: 'Search here',
              hintStyle: const TextStyle(color: ksecondaryColor)),
        ));
  }
}
