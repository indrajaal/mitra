import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CenterText extends StatelessWidget {
  final String text;
  final double size;
  final bool indicator;
  final bool cupertinoIndicator;
  final Color indicatorBgColor, indicatorColor;
  CenterText(
      {this.size,
      this.text,
      this.indicator,
      this.cupertinoIndicator = false,
      this.indicatorBgColor = Colors.black12,
      this.indicatorColor = Colors.black45});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: indicator == true
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                cupertinoIndicator == true
                    ? CupertinoActivityIndicator(
                        radius: 15,
                      )
                    : CircularProgressIndicator(
                        backgroundColor: indicatorBgColor,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(indicatorColor),
                      ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
                Text(text,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(fontSize: size)),
              ],
            )
          : Text(text, style: TextStyle(fontSize: size)),
    );
  }
}
