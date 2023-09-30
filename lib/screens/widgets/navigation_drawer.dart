import 'package:flutter/material.dart';

import 'package:simple_notes/screens/edit_labels.dart';
import 'package:simple_notes/screens/settings.dart';
import 'package:simple_notes/screens/archive.dart';
import 'package:simple_notes/screens/trash.dart';
import 'package:simple_notes/screens/home.dart';

// Useful
// https://docs.flutter.dev/cookbook/navigation/navigation-basics
// https://stackoverflow.com/questions/51071933/navigator-routes-clear-the-stack-of-flutter

class SimpleNavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text('Simple Notes',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(Icons.description_outlined),
              title: Text('Notes'),
              onTap: () {
                SimpleNavDrawerLogic.popAllAndPush(context, HomeScreen());
              },
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
                  child: OutlinedButton(
                    onPressed: () {
                      SimpleNavDrawerLogic.push(context, EditLabelsScreen());
                    },
                    child: Text('Edit',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Create new label'),
              onTap: () {
                //TODO: When pushed to the edit labels screen focus the input
                SimpleNavDrawerLogic.push(context, EditLabelsScreen());
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.archive_outlined),
              title: Text('Archive'),
              onTap: () {
                SimpleNavDrawerLogic.push(context, ArchiveScreen());
              },
            ),
            ListTile(
              leading: Icon(Icons.delete_outline),
              title: Text('Trash'),
              onTap: () {
                SimpleNavDrawerLogic.popAllAndPush(context, TrashScreen());
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text('Settings'),
              onTap: () {
                SimpleNavDrawerLogic.push(context, SettingsScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SimpleNavDrawerLogic {
  static void popAllAndPush(BuildContext context, Widget screen) {
    Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (_) => screen), (route) => false);
  }

  static void push(BuildContext context, Widget screen) {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
