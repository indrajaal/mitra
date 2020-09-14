import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({
    this.caption,
    this.bgColor,
    this.src,
    this.name,
    this.onTap,
    this.height: 70.0,
    this.width: 70.0,
    this.containerWidth: 110,
  });

  final String src;
  final caption;
  final String name;
  final Function onTap;
  final double width;
  final double containerWidth;
  final double height;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(4),
        alignment: Alignment.center,
        child: Container(
            // alignment: Alignment.center,
            width: containerWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: bgColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.white60,
                    offset: Offset(-4, -4),
                    blurRadius: 3.0),
                BoxShadow(
                  color: Color(0xffffffff),
                  offset: Offset(-.9, -.9),
                ),
                BoxShadow(
                    color: theme.colorScheme.primary.withOpacity(0.3),
                    offset: Offset(4, 4),
                    blurRadius: 3.0),
                BoxShadow(
                    color: theme.colorScheme.primary.withOpacity(0.3),
                    offset: Offset(.9, .9),
                    blurRadius: 1.0),
              ],
            ),
            child: ListTile(
              title: Image.asset(
                src,
                width: width,
                height: height,
              ),
              contentPadding: EdgeInsets.all(1.0),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Text(
                    caption ?? 'caption',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
