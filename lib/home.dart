import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/UI/responsive_layout.dart';
import 'package:whatsapp_clone_app/screens/mobile_screen_layout.dart';
import 'package:whatsapp_clone_app/screens/web_screen_layout.dart';
import 'colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp UI",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
