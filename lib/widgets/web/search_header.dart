import 'package:flutter/material.dart';
import 'package:google_clone/constants/colors.dart';
import 'package:google_clone/screens/search_screen.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(top: 25, left: 25),
        child: Row(
          children: [
            Image.asset(
              'assets/images/google-logo.png',
              height: 30,
              width: 92,
            ),
            const SizedBox(
              width: 27,
            ),
            Container(
              width: size.width * 0.45,
              height: 44,
              decoration: BoxDecoration(
                color: searchBorder,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: footerColor),
              ),
              child: TextFormField(
                onFieldSubmitted: (query) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SearchSreen(
                        searchQuery: query,
                        start: '0',
                      ),
                    ),
                  );
                },
                style: const TextStyle(fontSize: 16),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  suffixIcon: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    constraints: const BoxConstraints(maxWidth: 150),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/images/mic-icon.png',
                          height: 30,
                          width: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.search,
                          color: blueColor,
                        )
                      ],
                    ),
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ));
  }
}
