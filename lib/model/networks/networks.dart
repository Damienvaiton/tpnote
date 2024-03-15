import 'package:http/http.dart' as http;
import 'package:tpnote/model/CategorieModel.dart';
import 'dart:convert';

import 'package:tpnote/model/dartModel.dart';

const APIBAseUrl = "https://tenor.googleapis.com";

class APIDataSource {
  Future<List<String>> getTrendingGifs() async {
    final response = await http.get(Uri.parse(APIBAseUrl +
        "/v2/trending_terms?key=AIzaSyD3U57ytKdya6GPPGspReBnXNdjobSQLJc&client_key=my_test_app"));
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
    final response = await http.get(Uri.parse("${APIBAseUrl}/v2/search?key=AIzaSyD3U57ytKdya6GPPGspReBnXNdjobSQLJc&client_key=my_test_app&q=$id"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return DetailModel.fromJson(data);
    } else {
      throw Exception('Failed to load trending gifs');
    }
  }

  Future<CategorieModel> getCategories() async {
    final response = await http.get(Uri.parse("${APIBAseUrl}/v2/categories?key=AIzaSyD3U57ytKdya6GPPGspReBnXNdjobSQLJc"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return CategorieModel.fromJson(data);
    } else {
      throw Exception('Failed to load trending gifs');
    }
  }

  Future<DetailModel> getSearchGifsWithCategorie(String categories) async {
    final response = await http.get(Uri.parse("${APIBAseUrl} + v2/search?key=AIzaSyD3U57ytKdya6GPPGspReBnXNdjobSQLJc&q=$categories&locale=en&component=categories&contentfilter=high&client_key=my_test_app"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return DetailModel.fromJson(data);
    } else {
      throw Exception('Failed to load trending gifs');
    }
  }
}
