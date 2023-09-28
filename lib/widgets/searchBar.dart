import 'package:flutter/material.dart';

class SimpleSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
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
              print('menu pressed');
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
      suggestionsBuilder: (BuildContext context, SearchController controller) {
        return List.empty();
      },
    );
  }
}
