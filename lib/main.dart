import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/colors.dart';
import 'package:whatsapp_ui_clone/screens/mobile_layout_screen.dart';
import 'package:whatsapp_ui_clone/screens/web_screen_layout.dart';
import 'package:whatsapp_ui_clone/utils/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home:const ResponsiveLayout(mobileScreenLayout: MobileLayoutScreen(), webScreenLayout: WebScreenLayout()),
    );
  }
}