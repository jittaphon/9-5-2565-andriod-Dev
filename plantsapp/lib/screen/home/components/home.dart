import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
            child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text("Home Page"),
          ],
        ))
      ],
    );
  }
}
