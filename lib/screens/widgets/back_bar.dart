import 'package:flutter/material.dart';

class BackBar extends StatelessWidget {
  final VoidCallback onBackPressed;
  final String title;

  BackBar({required this.title, required this.onBackPressed});

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
        Padding(
          padding: EdgeInsets.only(left: 4.0),
          child: Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }
}
