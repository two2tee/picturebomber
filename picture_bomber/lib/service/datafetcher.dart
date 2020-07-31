import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:picture_bomber/models/page.dart';

class DataFetcher{
  final String baseURl = "https://www.eporner.com/api/v2";
  final String endpoint = "/video/search";
  final String query = "/?per_page=10&page=1&thumbsize=big&order=top-weekly&gay=2&lq=0&format=json";

  Future<Page> getVideoPage() async {
    String rawjson = await _fetchData();
    return _parseJsonToPage(rawjson);
  }

  Future<String> _fetchData() async {
    var uri = baseURl+endpoint+query;
    Response response =  await http.get(uri);
    if (response.statusCode == 200){
      return response.body; 
    }
    else {
      throw Exception('Failed to load picture urls from source ${response.statusCode}');
    }
  }

  Page _parseJsonToPage(String rawjson){
    return new Page.fromJson(rawjson);
  }

}

main() async {
  var fetcher = new DataFetcher();
  var page = fetcher.getVideoPage();
  print(page);
}