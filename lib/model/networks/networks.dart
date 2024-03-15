import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:tpnote/model/dartModel.dart';

const APIBAseUrl = "https://tenor.googleapis.com/v2/";

class APIDataSource {
  Future<List<String>> getTrendingGifs() async {
    final response = await http.get(Uri.parse(APIBAseUrl +
        "trending_terms?key=AIzaSyD3U57ytKdya6GPPGspReBnXNdjobSQLJc&client_key=my_test_app"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<String> trendingGifs = [];
      for (var item in data['results']) {
        trendingGifs.add(item);
      }
      return trendingGifs;
    } else {
      throw Exception('Failed to load trending gifs');
    }
  }

  Future<DetailModel> getDetailGifs(String id) async {
    final response = await http.get(Uri.parse("${APIBAseUrl}search?key=AIzaSyD3U57ytKdya6GPPGspReBnXNdjobSQLJc&client_key=my_test_app&q=$id"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return DetailModel.fromJson(data);
    } else {
      throw Exception('Failed to load trending gifs');
    }
  }
}
