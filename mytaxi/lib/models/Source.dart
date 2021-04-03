
class Source{
  String url;
  int width;
  int height;

  Source.fromJson(Map json){
    this.url=json['url'];
    this.width=json['width'];
    this.height=json['height'];
  }
}