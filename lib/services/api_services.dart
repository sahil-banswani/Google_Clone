import 'package:google_clone/constants/api_key.dart';
import 'package:google_clone/services/api_json.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  bool isDummyData = false;

  Future<Map<String, dynamic>> fetchData(
      {required String queryData, String start = "0"}) async {
    try {
      if (!isDummyData) {
        String q = queryData.contains(' ')
            ? queryData.split(' ').join('%20')
            : queryData;

        final responce = await http.get(
          Uri.parse(
              'https://www.googleapis.com/customsearch/v1?key=${apiKey}&cx=$contextKey&q=$q&start=$start'),
        );
        if(responce.statusCode == 200) {
          final jsonData = responce.body;
          final respData = json.decode(jsonData);
          return respData;
        }
      }
    } catch (e) {
      print(e.toString());
    }
    return apiResponse;
  }
}
