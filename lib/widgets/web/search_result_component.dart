import 'package:flutter/material.dart';
import 'package:google_clone/constants/colors.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SearchResultComponent extends StatefulWidget {
  final String link;
  final String text;
  final String desc;
  final String linkToGo;
  const SearchResultComponent(
      {super.key,
      required this.link,
      required this.text,
      required this.linkToGo,
      required this.desc});

  @override
  State<SearchResultComponent> createState() => _SearchResultComponentState();
}

class _SearchResultComponentState extends State<SearchResultComponent> {
  bool _showUnderline = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.link,
          style: TextStyle(color: Colors.white70),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () async {
              if (await canLaunchUrlString(widget.linkToGo)) {
                await launchUrlString(widget.linkToGo);
              }
            },
            onHover: (hovering) {
              setState(() {
                _showUnderline = hovering;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.link,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff202124),
                  ),
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: blueColor,
                    decoration: _showUnderline
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          widget.desc,
          style: const TextStyle(fontSize: 14, color: primaryColor),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
