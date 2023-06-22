import 'package:flutter/material.dart';

import 'package:transition/Page1.dart';
import 'package:transition/expansionpanel.dart';
import 'package:transition/page2.dart';
import 'package:transition/page3.dart';
import 'package:transition/page4.dart';

String globalValue = "";

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TabController _controller;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                child: Text("Home"),
              ),
              Tab(
                icon: Icon(Icons.message),
                child: Text("Message"),
              ),
              Tab(
                icon: Icon(Icons.settings),
                child: Text("Setting"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
              ),
              title: Text("Red"),
              subtitle: Text("This color is red."),
              trailing: Text("hello"),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              Container(
                height: 250,
                child: DrawerHeader(
                  child: Column(
                    children: const [
                      UserAccountsDrawerHeader(
                        currentAccountPicture: CircleAvatar(
                          backgroundColor: Colors.red,
                        ),
                        accountName: Text("Babin Dangol"),
                        accountEmail: Text(
                          "babindangol@gmail.com",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(),
                      ));
                },
              ),
              //used selectable Text Widget in this page
              ListTile(
                leading: Icon(Icons.book),
                title: Text("Selectable"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Selectable(),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.stacked_bar_chart_sharp),
                title: Text("Stack"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StackPage(),
                      ));
                },
              ),

              //Used data table Widget in this page
              ListTile(
                leading: Icon(Icons.data_array),
                title: Text("DataTable"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DataTablePage(),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("ExpansionPanel"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExpansionPanelScreen(),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
