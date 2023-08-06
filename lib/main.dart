import 'package:flutter/material.dart';
import 'package:online_academy_ui_design/screen3.dart';
import 'package:online_academy_ui_design/widgets/screen2.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const Screen3(),
    );
  }
}
