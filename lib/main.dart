import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'checklist_provider.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>ChecklistProvider(),
      child: MaterialApp(home: Homepage(),),);

  }
}
