import 'package:flutter/material.dart';

import 'package:simple_notes/screens/search.dart';

class FloatingSearchBar extends StatelessWidget {
  final VoidCallback onMenuPressed;

  FloatingSearchBar({required this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ExcludeFocus(
        child: SearchBar(
          constraints: BoxConstraints(maxHeight: 45.0, minHeight: 45.0),
          hintText: 'Search your notes',
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => SearchScreen())));
          },
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('Menu pressed');
              onMenuPressed();
            },
          ),
          trailing: <Widget>[
            Tooltip(
              message: 'Placeholder tooltip',
              child: IconButton(
                icon: Icon(Icons.grid_view),
                onPressed: () {
                  print('grid pressed');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
