import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      home: const MyHomePage(title: 'Hello World'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        //-------------------------------------------------------------------------------//
        appBar: AppBar( // วันนี้เรียนการทำ AppBar ตรงนี้เฉพาะตรงนี้ weiget AppBar
          title: Text(widget.title),
          leading: IconButton(
          icon:Icon(Icons.menu),
          onPressed: (){},
          ),
          actions: [
             IconButton(onPressed: () {},icon: Icon(Icons.notifications_none)),
             IconButton(onPressed: () {},icon: Icon(Icons.search)),
          ],
          elevation: 90,
          flexibleSpace: Container(
            decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://pbs.twimg.com/media/EeLCvQbU0AAyiw9.jpg"),
            fit: BoxFit.cover)
            ),),
            bottom: TabBar(tabs: [
              Tab(icon:Icon(Icons.home),text: "Home",),
              Tab(icon:Icon(Icons.list_alt),text: "Feed",),
              Tab(icon:Icon(Icons.person),text: "Profile",),
              Tab(icon:Icon(Icons.settings),text: "Settings",),
            ]),
        ),
      //-------------------------------------------------------------------------------//
    
    
        body: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
               Container(
                alignment: const Alignment(0, 0),
                //color: Colors.green,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pink[500],
                  ),
                )
              ),
              Container(
                alignment: const Alignment(0.2, 0.2),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 192, 168, 176),
                  ),
                )
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
