import 'package:tpnote/model/CategorieModel.dart';
import 'package:tpnote/model/dartModel.dart';
import 'package:tpnote/model/networks/networks.dart';

class DataViewModel {
  Future<List<String>> fetchTrendingData() async {
    APIDataSource apiDataSource = APIDataSource();
    var response = await apiDataSource.getTrendingGifs();
    return response;
  }

  Future<DetailModel> fetchDetailData(String id) async {
    APIDataSource apiDataSource = APIDataSource();
    var response = await apiDataSource.getDetailGifs(id);
    return response;
  }

  Future<CategorieModel> fetchCategorieData() async {
    APIDataSource apiDataSource = APIDataSource();
    var response = await apiDataSource.getCategories();
    return response;
  }

    Future<DetailModel> fetchSearchData(String categories) async {
      APIDataSource apiDataSource = APIDataSource();
      var response = await apiDataSource.getSearchGifsWithCategorie(categories);
      return response;
    }
  }

