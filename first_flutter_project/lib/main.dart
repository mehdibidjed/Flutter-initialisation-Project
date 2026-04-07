import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final hour = now.hour;

    bool isMorning = hour >= 6 && hour < 18;

    final seedColor = isMorning ? Colors.orange : Colors.indigo;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TP1",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: seedColor,
          brightness: isMorning ? Brightness.light : Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: HomeScreen(isMorning: isMorning),
    );
  }
}