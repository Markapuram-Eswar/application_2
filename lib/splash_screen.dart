import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:application_2/homepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(
        Duration(seconds: 2)); // Set the delay for the splash screen
    Get.offAll(() => Homepage()); // Navigate to the Homepage after the delay
  }

  @override
  Widget build(BuildContext context) {
    // Retrieve current theme brightness
    Brightness currentBrightness = Get.theme.brightness;

    // Determine background color based on theme mode
    Color backgroundColor =
        currentBrightness == Brightness.dark ? Colors.black : Colors.white;

    // Determine elevation shadow color based on theme mode
    Color elevationColor =
        currentBrightness == Brightness.dark ? Colors.white : Colors.black;

    return Scaffold(
      backgroundColor:
          backgroundColor, // Set background color based on theme mode
      body: Center(
        child: Container(
          width: 250.0,
          height: 250.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: elevationColor
                    .withOpacity(0.6), // Set shadow color with opacity
                blurRadius: 12.0, // Set shadow blur radius
                //offset: Offset(0, 5), // Set shadow offset
              ),
            ],
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/hi.webp'),
            ),
          ),
        ),
      ),
    );
  }
}
