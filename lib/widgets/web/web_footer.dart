import 'package:flutter/material.dart';
import 'package:google_clone/constants/colors.dart';
import 'package:google_clone/widgets/fotter_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: const Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
            ),
          ],
        ),
      ),
    );
  }
}
