import 'package:http/http.dart' as http;
import 'package:tpnote/model/categorie_model.dart';
import 'dart:convert';
import 'package:tpnote/model/dart_model.dart';

const APIBAseUrl = "https://tenor.googleapis.com";
const APIKEY = String.fromEnvironment('APIKEY');

class APIDataSource {
  Future<List<String>> getTrendingGifs() async {
    final response = await http.get(Uri.parse(
        "$APIBAseUrl/v2/trending_terms?key=$APIKEY&client_key=my_test_app"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<String> trendingGifs = [];
      for (var item in data['results']) {
        trendingGifs.add(item);
      }
      return trendingGifs;
    } else {
      throw Exception(
          'Failed to load trending gifs with the code: ${response.statusCode} and the message: ${response.body}');
    }
  }

  Future<DetailModel> getDetailGifs(String id) async {
    final response = await http.get(Uri.parse(
        "$APIBAseUrl/v2/search?key=$APIKEY&client_key=my_test_app&q=$id&limit=3"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return DetailModel.fromJson(data);
    } else {
      throw Exception('Failed to load trending gifs');
    }
  }

  Future<DetailModel> getNextDetailGifs(String id, String nextid) async {
    final response = await http.get(Uri.parse(
        "$APIBAseUrl/v2/search?key=$APIKEY&client_key=my_test_app&q=$id&limit=3&pos=$nextid"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return DetailModel.fromJson(data);
    } else {
      throw Exception('Failed to load trending gifs');
    }
  }

  Future<CategorieModel> getCategories() async {
    final response =
        await http.get(Uri.parse("$APIBAseUrl/v2/categories?key=$APIKEY"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return CategorieModel.fromJson(data);
    } else {
      throw Exception('Failed to load trending gifs');
    }
  }

  Future<DetailModel> getSearchGifsWithCategorie(String categories) async {
    final response = await http.get(Uri.parse(
        "$APIBAseUrl/v2/search?key=$APIKEY&locale=en&component=categories&contentfilter=high&client_key=my_test_app&q=$categories"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return DetailModel.fromJson(data);
    } else {
      throw Exception('Failed to load trending gifs');
    }
  }
}
