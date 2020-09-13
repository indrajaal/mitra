import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  Appbar({
    this.elevation: 0.0,
    this.logo,
    this.settings,
    this.title: "",
    this.color,
    this.backButtonColor,
    this.onPressed,
    this.settingOnPressed,
    this.preferredSize: const Size.fromHeight(50),
  });

  Appbar.withBackButton({
    this.elevation: 0.0,
    this.logo = false,
    this.settings,
    this.title: "",
    this.color,
    this.backButtonColor,
    this.onPressed,
    this.settingOnPressed,
    this.preferredSize: const Size.fromHeight(50),
  });

  final elevation;
  final color;
  final bool logo;
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
        title: Text(title, style: theme.textTheme.bodyText1),
        leading: logo
            ? Padding(
                padding: EdgeInsets.only(top: 16.0, left: 8.0),
                child: Text(
                  'LOGO',
                  style: theme.textTheme.bodyText2
                      .copyWith(fontWeight: FontWeight.w800),
                ))
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
