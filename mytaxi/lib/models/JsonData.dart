
import 'package:mytaxi/models/Data.dart';

class JsonData{
  String kind;
  Data data;

  JsonData.fromJson(Map json){
    this.kind=json['kind'];
    this.data=Data.fromJson(json['data']);
  }
}