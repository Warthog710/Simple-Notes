import 'package:flutter/material.dart';

class BackSearchBar extends StatelessWidget {
  final VoidCallback onBackPressed;

  BackSearchBar({required this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 2.0, top: 2.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            tooltip: 'Placeholder tooltip',
            onPressed: () {
              print('Back pressed');
              onBackPressed();
            },
          ),
        ),
        Expanded(
          child: TextField(
            cursorHeight: 28,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 4.0),
              hintText: 'Search your notes',
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
