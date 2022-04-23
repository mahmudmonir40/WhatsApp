

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Model/call_model.dart';
import 'package:whatsapp/Model/chat_model.dart';

class chats extends StatelessWidget {
  const chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatsData.length,

        itemBuilder: (context, i) => Column(
          children: <Widget> [


            new ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                backgroundImage: NetworkImage(chatsData[i].pic),
              ),

              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  new Text(chatsData[i].name,style: TextStyle(fontSize: 18,color: Colors.blueGrey,fontWeight: FontWeight.bold),),

               
                  new Text(chatsData[i].time,style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.w300),)
                ],
              ),

              subtitle: Row(
                children: [

                  new Text(chatsData[i].msg,style: TextStyle(fontSize: 11.0,color: Colors.black,fontWeight: FontWeight.w300),),
                  

                ],
              ),
            )

          ],
        )

    );
  }
}
