import 'package:carrot/screens/main_screens.dart';
import 'package:carrot/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carrot Market',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const MainScreens(),
    );
  }
}
