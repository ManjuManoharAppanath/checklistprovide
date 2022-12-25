import 'package:flutter/material.dart';

class ChecklistProvider extends ChangeNotifier{
  List<String> _items=[];
  List<String> get items=>_items;
  void checked(String item){
    final isexist=_items.contains(item);
    if(isexist){
      _items.remove(item);
    }
    else
      {
        _items.add(item);
      }
    notifyListeners();
  }
  bool isexist(String item){
    final isexist=_items.contains(item);
    return isexist;
  }
}