import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final checkValue;
  final Color indicatorBgColor, indicatorColor;
  
  const Indicator(this.checkValue, this.indicatorBgColor, this.indicatorColor) : super();

  @override
  Widget build(BuildContext context) {
    return checkValue != null
        ? SizedBox.shrink()
        : LinearProgressIndicator(
            backgroundColor: indicatorBgColor,
            valueColor: AlwaysStoppedAnimation<Color>(indicatorColor),
          );
  }
}

class BoolIndicator extends StatelessWidget {
  final checkValue;
   final Color indicatorBgColor, indicatorColor;
  const BoolIndicator(this.checkValue, this.indicatorColor, this.indicatorBgColor) : super();

  @override
  Widget build(BuildContext context) {
    return !checkValue
        ? SizedBox.fromSize(
            size: Size.fromHeight(0),
          )
        : LinearProgressIndicator(
            backgroundColor: indicatorBgColor,
            valueColor: AlwaysStoppedAnimation<Color>(indicatorColor),
          );
  }
}
