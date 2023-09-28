import 'package:flutter/material.dart';

// Useful https://docs.flutter.dev/cookbook/navigation/navigation-basics

class SimpleNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text('Simple Notes'),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Home'),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.0, top: 6.0, bottom: 12.0),
                  child: Text('Labels'),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12.0, top: 6.0, bottom: 12.0),
                  child: Text('Edit'),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Create new label'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.archive_outlined),
              title: Text('Archive'),
            ),
            ListTile(
              leading: Icon(Icons.delete_outline),
              title: Text('Trash'),
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
