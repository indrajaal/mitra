import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  Appbar(
    this.title, {
    this.elevation: 0.0,
    @required this.logo,
    this.settings: false,
    this.color,
    this.backButtonColor,
    this.onPressed,
    this.settingOnPressed,
    this.preferredSize: const Size.fromHeight(50),
  });

  Appbar.withBackButton(
    this.title, {
    this.elevation: 0.0,
    this.logo,
    this.settings: false,
    this.color,
    this.backButtonColor,
    this.onPressed,
    this.settingOnPressed,
    this.preferredSize: const Size.fromHeight(50),
  }) : assert(logo == null);

  final elevation;
  final color;
  final AssetImage logo;
  final bool settings;
  final String title;
  final Color backButtonColor;
  final onPressed;
  final settingOnPressed;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        elevation: 0.0,
        primary: false,
        iconTheme: theme.iconTheme.copyWith(color: color),
        backgroundColor: Theme.of(context).colorScheme.primaryVariant,
        centerTitle: true,
        title: Text(title ?? '', style: theme.textTheme.bodyText1),
        leading: logo != null
            ? Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 0.0, left: 8.0),
                  child: Image(
                    image: logo,
                    alignment: Alignment.center,
                  ),
                ),
              )
            : IconButton(
                icon: Icon(
                  CupertinoIcons.back,
                  color: backButtonColor,
                ),
                onPressed: onPressed,
              ),
        actions: <Widget>[
          if (settings)
            IconButton(
              icon: Icon(
                Icons.settings,
                color: backButtonColor,
              ),
              onPressed: settingOnPressed,
            )
        ],
      ),
    );
  }
}
