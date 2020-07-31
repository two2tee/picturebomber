class Video{
  String id;
  String title;
  int views;
  String rating;
  String video_url;
  String thumb_url;

  Video.fromJson(Map<String, dynamic> jsonMap){
    this.id = jsonMap['id'];
    this.title = jsonMap['title'];
    this.video_url = jsonMap['url'];
    this.views = jsonMap['views'];
    this.rating = jsonMap['rate'];
    this.rating = jsonMap['thumps'][0]['src'];
  }

}