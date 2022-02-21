import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/main_page/widgets/screen_main_age.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
      ),
      home: const ScreenMainPage(),
    );
  }
}
