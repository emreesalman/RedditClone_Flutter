
import 'package:mytaxi/models/Preview.dart';

class LastData{
  String author_fullname;
  String name;
  String title;
  int ups;
  int downs;
  String thumbnail;
  Preview preview;
  int num_comments;

  LastData.fromJson(Map json){
    this.author_fullname=json['author_fullname'];
    this.title=json['title'];
    this.name=json['name'];
    this.ups=json['ups'];
    this.downs=json['downs'];
    this.thumbnail=json['thumbnail'];
    this.num_comments=json['num_comments'];
    this.preview=Preview.fromJson(json['preview']);
  }

}