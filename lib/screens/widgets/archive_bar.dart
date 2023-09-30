import 'package:flutter/material.dart';

import 'package:simple_notes/screens/search.dart';

class ArchiveBar extends StatelessWidget {
  final VoidCallback onMenuPressed;

  ArchiveBar({required this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.0, top: 2.0),
              child: IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Placeholder tooltip',
                onPressed: () {
                  print('Menu pressed');
                  onMenuPressed();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.0),
              child: Text('Archive',
                  style: TextStyle(fontWeight: FontWeight.w600)),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 4.0, top: 2.0),
              child: IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Placeholder tooltip',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => SearchScreen())));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 2.0, top: 2.0),
              child: IconButton(
                icon: Icon(Icons.grid_view),
                tooltip: 'Placeholder tooltip',
                onPressed: () {
                  print('Grid pressed');
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
