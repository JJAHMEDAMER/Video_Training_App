import 'package:flutter/material.dart';
import 'package:video_training_app/pages/home_page.dart';
import 'package:video_training_app/pages/video_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VideoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
