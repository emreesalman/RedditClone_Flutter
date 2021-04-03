

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget{

  final String name;
  final String fullName;
  final String thumbNailUrl;
  final int ups;
  final int downs;
  final int comments;
  final String imageUrl;
  final String title;

  const MyCard({Key key, this.name, this.fullName, this.thumbNailUrl, this.ups, this.downs, this.comments, this.imageUrl, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 5),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(thumbNailUrl),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(name.toString()+' ',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text('Posted by'+fullName.toString()),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Column(
                    children: [
                      Icon(Icons.arrow_upward,color: Colors.green,),
                      Text(ups.toString()),
                      SizedBox(height: 5,),
                      Text(downs.toString()),
                      Icon(Icons.arrow_downward,color: Colors.red,),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: Container(
                    height: 300,
                    width:MediaQuery.of(context).size.width-60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png"),
                        fit: BoxFit.contain
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.messenger,color: Colors.grey,),
                Text(''+comments.toString()+' Comments'),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Icon(Icons.arrow_forward,color: Colors.grey,),
                ),
                Text('Share'),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.add_box,color: Colors.grey,),
                ),
                Text('Save'),
              ],
            ),
          ],

        ),

      ),

    );
  }

}