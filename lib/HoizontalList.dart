import 'package:flutter/material.dart';
import 'package:mitra/Category.dart';

class HorizontalList extends StatefulWidget {
  final listViews;
  final border;
  final scrollDirection;
  final Function onTap;
  HorizontalList({
    this.listViews,
    this.border: false,
    this.scrollDirection: Axis.horizontal,
    this.onTap
  });

  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    // final BloodRequest newRequest =
    //     BloodRequest(null, null, null, null, null, null, null);
    return ListView.builder(
      scrollDirection: widget.scrollDirection,
      itemCount: widget.listViews.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(
            right: 8.0,
          ),
          child: Category(
            name: widget.listViews[index]['name'],
            caption: widget.listViews[index]['name'],
            src: widget.listViews[index]['src'],
            height: 60.0,
            width: 50.0,
            containerWidth: 110.0,
            onTap: widget.onTap
              
          ),
        );
      }, //
    );
  }
}
