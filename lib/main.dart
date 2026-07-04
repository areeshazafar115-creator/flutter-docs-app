import 'package:flutter/material.dart';
import 'chat_screen.dart';

void main() {
  runApp(const FlutterDocsApp());
}

class FlutterDocsApp extends StatelessWidget {
  const FlutterDocsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Docs Assistant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF2563EB),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0B1220),
      ),
      home: const ChatScreen(),
    );
  }
}
