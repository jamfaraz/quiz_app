import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/check_login_scree.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qna',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor:  const Color(0xFF3550DC),
          surfaceTint: Colors.white,
          background: Colors.white,
        ),
      ),
      home: const CheckLoginScreen(),
    );
  }
}
