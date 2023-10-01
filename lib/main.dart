import 'package:flutter/material.dart';
import 'package:whatsapp/screens/setting_screen.dart';

final navigatorkey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorkey,
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: "whatsapp",

      // home: const MyWhatsapp(),
      home: const SettingScreen(),
    );
  }
}
