import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/Home_view.dart';
import 'Services/New_Services.dart';

void main() {
  New_Services(Dio()).getGeneralNews();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_view(),
    );
  }
}
