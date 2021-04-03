
class Resolutions{
  String url;
  int width;
  int height;

  Resolutions.fromJson(Map json){
    this.url=json['url'];
    this.width=json['width'];
    this.height=json['height'];

  }
}