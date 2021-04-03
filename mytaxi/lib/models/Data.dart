
import 'package:mytaxi/models/Children.dart';

class Data{
   int dist;
   List<Children> children;

   Data.fromJson(Map json){
     this.dist=json['dist'];
     this.children=(json['children']??[]).map((eleman)=>Children.fromJson(eleman)).toList().cast<Children>();
   }
}