import 'package:flutter/material.dart';
import 'package:google_clone/constants/colors.dart';
import 'package:google_clone/widgets/mobile/mobile_footer.dart';
import 'package:google_clone/widgets/search.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          title: SizedBox(
            width: size.width * 0.34,
            child: const DefaultTabController(
                length: 2,
                child: TabBar(
                    labelColor: blueColor,
                    indicatorColor: blueColor,
                    tabs: [
                      Tab(text: 'All'),
                      Tab(text: 'Images'),
                    ])),
          ),
          backgroundColor: backgroundColor,
          elevation: 0,
          actions: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 40,
              width: 40,
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/images/more-icons.png',
                  color: primaryColor,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 5),
              child: MaterialButton(
                onPressed: () {},
                color: const Color(0xff1A73BE),
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.25,
              ),
              const Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Search(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  MobileFotter(),
                ],
              ))
            ],
          ),
        ));
  }
}
