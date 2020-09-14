import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showDialogBox(context, Widget title, List<Widget> action, double height) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: height,
          child: CupertinoAlertDialog(
            title: title,
            actions: action,
          ),
        );
      });
}

showBottomSheetMitra(
  context,
  double height,
  List<Widget> children,
) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(child: Container(
          height: height,
          child: ListView(
            children: children,
          ),
        ));
      });
}
