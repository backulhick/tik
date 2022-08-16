import 'package:flutter/material.dart';
import 'package:tik/screen/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(

      ),
      routes: {
        'homepage' :(context) => const Homepage(),
      },
      initialRoute: 'homepage',


    );
  }
}

