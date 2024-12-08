import 'package:flutter/material.dart';
import 'package:flutter_application_3/Pages/Home.dart';
import 'package:flutter_application_3/Pages/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (_) => const LoginOVO(),
        '/HomeOVO': (_) =>  const HomeOVO(), 
      },
      home: const Scaffold(
        body:  HomeOVO(),
      ),
    );
  }
}
