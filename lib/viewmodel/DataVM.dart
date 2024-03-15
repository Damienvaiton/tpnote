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
}
