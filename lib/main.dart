import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_provider/toggle.dart';
import 'package:toggle_provider/toggle_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=>ToggleProvider(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToggleScreen(),
      ),
    );
  }
}

