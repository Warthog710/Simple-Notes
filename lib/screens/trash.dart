import 'package:flutter/material.dart';

import 'package:simple_notes/screens/widgets/navigation_drawer.dart';
import 'package:simple_notes/screens/widgets/trash_bar.dart';

class TrashScreen extends StatefulWidget {
  @override
  State<TrashScreen> createState() => TrashScreenState();
}

class TrashScreenState extends State<TrashScreen> {
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
            TrashBar(
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
