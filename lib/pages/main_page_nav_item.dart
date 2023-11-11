import 'package:flutter/material.dart';

class MainPageNavItem {
  final Widget title;
  final BottomNavigationBarItem iconItem;
  final Widget page;

  MainPageNavItem(
      {required this.title, required this.iconItem, required this.page});
}
