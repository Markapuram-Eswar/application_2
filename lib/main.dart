import "package:application_2/splash_screen.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light, // Default theme mode: light
        // Additional theme configurations
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Dark theme mode
        // Additional dark theme configurations
      ),
      home: SplashScreen(),
    );
  }
}
