import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mytaxi/app/card.dart';
import 'dart:async';
import 'dart:convert';
import 'package:mytaxi/models/JsonData.dart';
class RedditHome extends StatefulWidget {
  @override
  _RedditHomeState createState() => _RedditHomeState();
}
class _RedditHomeState extends State<RedditHome> {
  @override
  JsonData _jsonData;
  Future<void> _getData()async{
    var response=await http.get("https://www.reddit.com/r/TechNewsToday/top.json?count=20");
    debugPrint(response.statusCode.toString());
    if(response.statusCode==200){
      Map gelenJson=jsonDecode(response.body);
      _jsonData=JsonData.fromJson(gelenJson);
    }else{
      debugPrint("Connection Error"+response.statusCode.toString());
    }
    setState(() {

    });
  }
  void initState(){
    super.initState();
    _getData();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reddit News'),),
      body:ListView.builder(itemCount: _jsonData.data.dist,itemBuilder: (context,index){
           if(_jsonData.data.dist>0){
             return   MyCard(
               comments: _jsonData.data.children[index].sonData.num_comments,
               downs: _jsonData.data.children[index].sonData.downs,
               ups: _jsonData.data.children[index].sonData.ups,
               title: _jsonData.data.children[index].sonData.title,
               fullName:_jsonData.data.children[index].sonData.author_fullname,
               name:_jsonData.data.children[index].sonData.name,
               thumbNailUrl:_jsonData.data.children[index].sonData.thumbnail,
               imageUrl:_jsonData.data.children[index].sonData.preview.images.first.source.url,
             );
           }else{
             return RefreshIndicator(
               onRefresh: _refreshList,
               child: SingleChildScrollView(
                 physics: AlwaysScrollableScrollPhysics(),
                 child: Container(
                   child: Center(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Icon(Icons.chat,color: Theme.of(context).primaryColor,
                           size: 100,
                         ),
                         Text('Sayfayi Yenileyin',textAlign:TextAlign.center,style: TextStyle(fontSize: 25),),
                       ],
                     ),
                   ),
                   height: MediaQuery.of(context).size.height-150,
                 ),
               ),
             );
           }
         },
      ),
    );
  }
  Future<Null> _refreshList() async{
    await Future.delayed(Duration(seconds: 1));
    setState(() { });
    return null;
  }
}
