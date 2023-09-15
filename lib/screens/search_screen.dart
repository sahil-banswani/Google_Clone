import 'package:flutter/material.dart';
import 'package:google_clone/constants/colors.dart';
import 'package:google_clone/services/api_services.dart';
import 'package:google_clone/widgets/search_fotter.dart';
import 'package:google_clone/widgets/search_tabs.dart';
import 'package:google_clone/widgets/web/search_header.dart';
import 'package:google_clone/widgets/web/search_result_component.dart';

class SearchSreen extends StatelessWidget {
  final String searchQuery;
  final String start;
  const SearchSreen(
      {super.key, required this.searchQuery, required this.start});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Title(
        color: Colors.blue,
        title: searchQuery,
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //web haders
                const SingleChildScrollView(
                    scrollDirection: Axis.horizontal, child: SearchHeader()),
                //tabs for new images etc
                Padding(
                  padding: EdgeInsets.only(left: size.width <= 768 ? 10 : 150),
                  child: const SearchTabs(),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  height: 0,
                  thickness: 0.4,
                ),
                //search results
                FutureBuilder(
                  future: ApiService()
                      .fetchData(queryData: searchQuery, start: start),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: size.width <= 768 ? 10 : 150, right: 12),
                            child: Text(
                              "About ${snapshot.data?['searchInformation']['formattedTotalResults']} results (${snapshot.data?['searchInformation']['formattedSearchTime']} seconds)",
                              style: const TextStyle(
                                  color: Color(0xff70757a), fontSize: 15),
                            ),
                          ),
                          ListView.builder(
                            itemCount: snapshot.data?['items'].length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    left: size.width <= 768 ? 10 : 150,
                                    top: 10),
                                child: SearchResultComponent(
                                  link: snapshot.data?['items'][index]
                                      ['formattedUrl'],
                                  text: snapshot.data?['items'][index]['title'],
                                  linkToGo: snapshot.data?['items'][index]
                                      ['link'],
                                  desc: snapshot.data?['items'][index]
                                      ['snippet'],
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    if (start != "0") {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => SearchSreen(
                                              searchQuery: searchQuery,
                                              start: (int.parse(start) - 10)
                                                  .toString()),
                                        ),
                                      );
                                    }
                                  },
                                  child: const Text(
                                    '< Prev',
                                    style: TextStyle(
                                        fontSize: 15, color: blueColor),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => SearchSreen(
                                            searchQuery: searchQuery,
                                            start: (int.parse(start) + 10)
                                                .toString()),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Next >',
                                    style: TextStyle(
                                        fontSize: 15, color: blueColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const SearchFotter(),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
