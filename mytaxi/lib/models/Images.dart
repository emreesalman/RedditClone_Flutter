
import 'package:mytaxi/models/Resolutions.dart';
import 'package:mytaxi/models/Source.dart';

class Images{
  Source source;
  List<Resolutions> resolutions;
  Images.fromJson(Map json){
    this.source=Source.fromJson(json['source']);
    this.resolutions=(json['resolutions']??[]).map((e)=>Resolutions.fromJson(e)).toList().cast<Resolutions>();
    // this.children=(json['children']??[]).map((eleman)=>Children.fromJson(eleman)).toList().cast<Children>();
  }
}