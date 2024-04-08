import 'package:flutter/material.dart';
import 'page/saheri_home.dart';

void main() {
  runApp(const UktiApp());
}

class UktiApp extends StatefulWidget {
  const UktiApp({Key? key}) : super(key: key);

  @override
  State<UktiApp> createState() => _UktiAppState();
}

class _UktiAppState extends State<UktiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "গুটি ইউরিয়া",
      debugShowCheckedModeBanner: false,
      home: SehariHome_Screen(),
    );
  }
}

