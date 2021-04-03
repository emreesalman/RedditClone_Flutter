
import 'package:mytaxi/models/Images.dart';

class Preview{
  List<Images> images;

  Preview.fromJson(Map json){
    //this.images=(json['images']??[].map((e) => Images.fromJson(e)).toList());
    this.images=(json['images']??[]).map((e)=>Images.fromJson(e)).toList().cast<Images>();

  }
}
