import 'package:flutter/material.dart';
import 'package:journal/ui/home_screen.dart';

void main() {
  runApp(JournalApp());
}

class JournalApp extends StatelessWidget {
  const JournalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
