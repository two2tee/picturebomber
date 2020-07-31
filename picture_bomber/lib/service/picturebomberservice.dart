import 'package:picture_bomber/service/datafetcher.dart';
import 'package:picture_bomber/models/video.dart';
import 'dart:math' as math;

class PictureBomberService{
  DataFetcher _dataFetcher;
  // TODO EmailFetcher _emailFetcher;

  PictureBomberService(){
    this._dataFetcher = new DataFetcher();
    // this._emailFetcher = new EmailFetcher;
  }

  Future<String> bombEmail(String email) async{
    var video = await fetchRandomVideo();
    //_emailFetcher.send(email,     video.thumb_url)
    return video.thumb_url;
  }

  Future<Video> fetchRandomVideo() async {
    var page = await _dataFetcher.getVideoPage();
    var rng = new math.Random();
    var random_i = rng.nextInt(page.videos.length);
    return page.videos[random_i];
  }

}
