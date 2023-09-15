import 'package:flutter/material.dart';

class LanguageText extends StatelessWidget {
  const LanguageText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(title, style: const TextStyle(color: Colors.blue),),
    );
  }
}