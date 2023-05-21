import 'package:flutter/material.dart';

class BottomNavBarProvider extends ChangeNotifier
{
  int index=0;

  changeSelectedItem(value)
  {
    index=value;
    notifyListeners();
  }
}