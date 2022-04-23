

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsapp/Model/chat_model.dart';
import 'package:whatsapp/Model/status_model.dart';

class status extends StatelessWidget {
  const status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

         Row(
        children: [

          Expanded(
            child: ListTile(
              leading: Container(
                  width: 70.0,

                  child: Stack(
                    children: [

                      ClipOval(
                        child: Image.network('https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014__340.jpg'),
                      ),

                      Align(
                        alignment: Alignment.bottomRight,

                        child: Container(
                          height: 20.0,
                          width: 20.0,

                          child: Icon(Icons.add,color: Colors.white,size: 15,),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: Colors.teal
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              
              title: Text('My Status',style: TextStyle(fontWeight: FontWeight.bold),),
           
           
              subtitle: Text('Tab to add Status Update'),
            ),

          )
        ],
      ),



         SizedBox(
          height: 30.0,

          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
            width: double.infinity,

           child: Text('Recent Update',style: TextStyle(fontSize: 16,color: Colors.grey.shade500,fontWeight: FontWeight.bold),),
           color: Colors.grey.shade200,
          ),
        ),



        Expanded(
            child: ListView.builder(
                itemCount: statusData.length,

                itemBuilder: (context, i) => Column(
                  children: [

                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.teal,
                        backgroundImage: NetworkImage(chatsData[i].pic),
                      ),

                      title: Row(
                        children: [

                          Text(statusData[i].name,style: TextStyle(fontSize: 18,color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      
                      
                      subtitle: Container(
                        child: Text(statusData[i].time,style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w300),),
                      ),
                    )
                  ],
                )
            )

        )
      ],
    );
  }
}
