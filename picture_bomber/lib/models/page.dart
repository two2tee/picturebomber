import 'dart:convert';

import 'package:picture_bomber/models/video.dart';

class Page{
  int page;
  int perPage;
  int totalPages;
  List<Video> videos;

  Page.fromJson(String json){
    final _map = jsonDecode(json);
    this.page = _map['page'];
    this.perPage = _map['per_page'];
    this.totalPages = _map['total_pages'];
    final _videos = _map['videos'];
    this.videos = [];
    
    for (var videoJson in _videos) {
      this.videos.add(new Video.fromJson(videoJson));
    }
  }

}