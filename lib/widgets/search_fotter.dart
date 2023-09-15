import 'package:flutter/material.dart';
import 'package:google_clone/constants/colors.dart';

class SearchFotter extends StatelessWidget {
  const SearchFotter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: footerColor,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            children: [
              Text(
                'India ',
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 0.5,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.circle,
                color: Color(0xff78757A),
                size: 12,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                ' 100123, Mumbai, Maharashtra ',
                style: TextStyle(fontSize: 14, color: primaryColor),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 0,
          height: 0,
          color: Colors.black,
        ),
        Container(
          color: footerColor,
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: const Row(
            children: [
              Text(
                'Help',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Send Feedback',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Privacy',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Terms',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
