import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Delivery',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.grey[50],
            primarySwatch: Colors.orange),
        home: HomeScreen());
  }
}
