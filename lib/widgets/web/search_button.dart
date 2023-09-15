import 'package:flutter/material.dart';
import 'package:google_clone/constants/colors.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      color: searchColor,
      onPressed: () {},
      elevation: 0,
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
