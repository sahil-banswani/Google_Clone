import 'package:flutter/material.dart';
import 'package:google_clone/widgets/fotter_text.dart';

class MobileFotter extends StatelessWidget {
  const MobileFotter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        FotterButton(title: 'About'),
        SizedBox(
          width: 10,
        ),
        FotterButton(title: 'Advertising'),
        SizedBox(
          width: 10,
        ),
        FotterButton(title: 'Business'),
        SizedBox(
          width: 10,
        ),
        FotterButton(title: 'How Search Works'),
        SizedBox(
          width: 10,
        ),
        FotterButton(title: 'Privacy'),
        SizedBox(
          width: 10,
        ),
        FotterButton(title: 'Terms'),
        SizedBox(
          width: 10,
        ),
        FotterButton(title: 'Settings'),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
