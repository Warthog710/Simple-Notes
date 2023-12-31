import 'package:flutter/material.dart';

import 'package:simple_notes/screens/widgets/navigation_drawer.dart';
import 'package:simple_notes/screens/widgets/floating_search_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.white,
        toolbarHeight: 0,
      ),
      key: scaffoldKey,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            FloatingSearchBar(
              onMenuPressed: () {
                scaffoldKey.currentState?.openDrawer();
              },
            )
          ],
        ),
      ),
      drawer: SimpleNavDrawer(),
    );
  }
}
