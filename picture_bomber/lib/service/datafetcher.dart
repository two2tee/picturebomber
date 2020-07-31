workongimport 'package:http/http.dart' as http;

class DataFetcher{
  final String baseURl = "https://www.eporner.com/api/v2";
  final String endpoint = "/video/search";
  final String query = "/?per_page=10&page=1&thumbsize=big&order=top-weekly&gay=2&lq=0&format=json";

  DataFetcher(){}

  List getPictureUrls() {
    Future<http.Response> response = await fetchData();
    if (response.statusCode == 200){
      
    }
    else {
      throw Exception('Failed to load picture urls from source ${response.statusCode}')
    }
    return [];
  }

  Future<http.Response> fetchData() async {
    var uri = baseURl+endpoint+query;
    return await http.get(uri);
  }


}
