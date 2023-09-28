import 'package:flutter/material.dart';

class SimpleSearchBar extends StatelessWidget {
  final VoidCallback onMenuPressed;

  SimpleSearchBar({
    required this.onMenuPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SearchAnchor(
        builder: (BuildContext context, SearchController controller) {
          return SearchBar(
            hintText: 'Search your notes',
            controller: controller,
            onTap: () {
              print('tap...');
            },
            onChanged: (value) {
              print('changed ${value}');
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
          );
        },
        suggestionsBuilder:
            (BuildContext context, SearchController controller) {
          return List.empty();
        },
      ),
    );
  }
}
