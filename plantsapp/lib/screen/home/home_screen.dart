
import 'package:flutter/material.dart';
import 'package:plantsapp/screen/home/components/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
      
  
  }

  AppBar buildAppBar(){
    return AppBar(

    );
  }
}