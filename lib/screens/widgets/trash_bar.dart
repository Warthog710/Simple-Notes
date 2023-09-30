import 'package:flutter/material.dart';

class TrashBar extends StatelessWidget {
  final VoidCallback onMenuPressed;

  TrashBar({required this.onMenuPressed});

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
              child:
                  Text('Trash', style: TextStyle(fontWeight: FontWeight.w600)),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 2.0, top: 2.0),
          child: IconButton(
            icon: Icon(Icons.more_vert),
            tooltip: 'Placeholder tooltip',
            onPressed: () {
              print('vert menu pressed');
            },
          ),
        ),
      ],
    );
  }
}
