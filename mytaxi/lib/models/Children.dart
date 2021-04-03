
import 'package:mytaxi/models/LastData.dart';

class Children{

 LastData sonData;

 Children.fromJson(Map json){
   this.sonData= LastData.fromJson(json['data']);
 }
}