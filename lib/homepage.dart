import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:application_2/page2.dart';

class Homepage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retrieve current theme brightness
    Brightness currentBrightness = MediaQuery.of(context).platformBrightness;

    // Determine background color based on theme mode
    Color bodyColor =
        currentBrightness == Brightness.dark ? Colors.grey[900]! : Colors.white;
    Color drawerColor =
        currentBrightness == Brightness.dark ? Colors.grey[850]! : Colors.white;
    Color drawerItemColor =
        currentBrightness == Brightness.dark ? Colors.white : Colors.blue;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: bodyColor, // Set body background color
      appBar: AppBar(
        elevation: 30,
        shadowColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.menu_open_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: const Text('Hello World', style: TextStyle(color: Colors.white)),
        backgroundColor:
            Colors.lightBlue, // Set app bar background color to light blue
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              color:
                  Colors.lightBlue, // Fill header with app bar background color
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors
                      .lightBlue, // Ensure the drawer header fills the full width
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(color: drawerItemColor, fontSize: 24),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle, color: drawerItemColor),
              title: Text('Profile', style: TextStyle(color: drawerItemColor)),
              onTap: () {
                Get.back(); // Close the drawer
                // Navigate to profile page or perform any action
              },
            ),
            Expanded(child: SizedBox()), // Spacer to push items to the bottom
            Divider(), // Divider before "Settings" and "Logout"
            ListTile(
              leading: Icon(Icons.settings, color: drawerItemColor),
              title: Text('Settings', style: TextStyle(color: drawerItemColor)),
              onTap: () {
                Get.back(); // Close the drawer
                // Navigate to settings page or perform any action
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: drawerItemColor),
              title: Text('Logout', style: TextStyle(color: drawerItemColor)),
              onTap: () {
                Get.back(); // Close the drawer
                // Perform logout action
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        onPressed: () {
          Get.to(() => Page2());
        },
        child: Icon(Icons.chevron_right),
      ),
    );
  }
}
