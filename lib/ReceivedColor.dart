import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier{

  Color _containerColor = Colors.black;

  Color get containerColor => _containerColor;

  void ChngColor(){
    _containerColor = _containerColor == Colors.black? Colors.yellowAccent :Colors.black;
    notifyListeners();
  }

}