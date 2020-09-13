import 'package:flutter/material.dart';

import 'GridLook.dart';

class GridList extends StatelessWidget {
  GridList({this.listViews, this.crossAxisCount, this.onTap});
  final listViews;
  final int crossAxisCount;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      //physics: new NeverScrollableScrollPhysics(),
      itemCount: listViews.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridLook(
              color: Colors.white,
              name: listViews[index]['name'],
              caption: listViews[index]['cap'],
              src: listViews[index]['src'],
              onTap: onTap,
            ));
      },
    );
  }
}
