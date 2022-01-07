import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/details.dart';
import 'package:plant_app_ui/screens/plants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant app UI',
      initialRoute: '/details',
      routes: {
        '/': (context) => const Plants(),
        '/details': (context) => const Details()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
