import 'package:flutter/material.dart';
import 'package:simple_notes/screens/widgets/archive_bar.dart';
import 'package:simple_notes/screens/widgets/navigation_drawer.dart';

class ArchiveScreen extends StatefulWidget {
  @override
  State<ArchiveScreen> createState() => ArchiveScreenState();
}

class ArchiveScreenState extends State<ArchiveScreen> {
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
            ArchiveBar(onMenuPressed: () {
              scaffoldKey.currentState?.openDrawer();
            }),
          ],
        ),
      ),
      drawer: SimpleNavDrawer(),
    );
  }
}
