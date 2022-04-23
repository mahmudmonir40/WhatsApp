import 'package:flutter/material.dart';
import 'package:whatsapp/Tab/call.dart';
import 'package:whatsapp/Tab/camera.dart';
import 'package:whatsapp/Tab/chats.dart';
import 'package:whatsapp/Tab/status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'WhatsApp',
      theme: new ThemeData(

      ),
      home: const myapp(),
    );
  }
}


class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this,initialIndex: 1,)
      ..addListener(() {

      setState(() {

      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff006666),
        title: Text("WhatsApp",style: TextStyle(fontSize: 24),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Colors.white,iconSize: 24,),
        
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,))
        ],

        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,

          tabs: [

            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "Chats",),
            Tab(text: "Status",),
            Tab(text: "Call",),

          ],
        ),
      ),
      
      body: TabBarView(
          controller: _tabController,

          children: <Widget>[
            new camera(),
            new chats(),
            new status(),
            new call(),

          ]

      ),

      floatingActionButton: _tabController.index == 0?
      FloatingActionButton(onPressed: (){},
        child: Icon(Icons.camera,color: Colors.white,),
        backgroundColor: Colors.teal,
      )


          :_tabController.index == 1?
      FloatingActionButton(onPressed: (){},
        child: Icon(Icons.message,color: Colors.white,),
        backgroundColor: Colors.teal,
      )


          :_tabController.index == 2?
      Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: <Widget>[
          SizedBox(height: 45,width: 45,),

          FloatingActionButton(onPressed: (){},
            child: Icon(Icons.edit,color: Colors.blueGrey,),
            backgroundColor: Colors.white,
          ),

          SizedBox(height: 15,),

          FloatingActionButton(onPressed: (){},
            child: Icon(Icons.camera,color: Colors.white,),
            backgroundColor: Colors.teal,
          )
        ],
      )


          :FloatingActionButton(onPressed: (){},
        child: Icon(Icons.add_call,color: Colors.white,),
        backgroundColor: Colors.teal,
      )


    );
  }
}


