import 'package:flutter/material.dart';
import 'package:plantsapp/screen/home/components/body.dart';
import 'package:plantsapp/screen/home/components/home.dart';
import 'package:plantsapp/screen/home/components/profile.dart';

import 'components/cal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final tabs = [Homepage(), CalculatePage(), ContractPage()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.notifications_none)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            ],
            elevation: 90,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://pbs.twimg.com/media/EeLCvQbU0AAyiw9.jpg"),
                      fit: BoxFit.cover)),
            ),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.list_alt),
                text: "Feed",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Profile",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "Settings",
              ),
            ]),
          ),
          //-------------------------------------------------------------------------------//

          body: Body(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "Home Page"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calculate), label: "Calculate"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.contact_mail), label: "Contact Aj tui")
            ],
            onTap: (index) {
              setState(() {
                print(index);
                _currentIndex = index;
              });
            },
          ),
        ));
  }
}
