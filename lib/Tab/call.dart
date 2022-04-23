


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:whatsapp/Model/call_model.dart';

class call extends StatelessWidget {
  const call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callData.length,

        itemBuilder: (context, i) => Column(
          children: <Widget>[

            new ListTile(
              leading: CircleAvatar(

                backgroundColor: Colors.teal,
                backgroundImage: NetworkImage(callData[i].pic),
              ),

              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text(callData[i].name,style: TextStyle(fontSize: 18,color: Colors.blueGrey,fontWeight: FontWeight.bold),),

                  new Icon(i % 2 == 0 ? Icons.call : Icons.videocam,color: Colors.teal,size: 18,),


                ],
              ),

              subtitle: Text(callData[i].time,style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.w300),),
            )
          ],
        )

    );
  }
}
