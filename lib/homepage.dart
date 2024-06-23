import 'package:application_2/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        elevation: 30,
        shadowColor: const Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.home,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            () => Get.to(Page2());
          },
        ),
        actions: const [
          Icon(Icons.search, color: Colors.white, size: 30),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.logout,
            color: Colors.white,
            size: 30,
          )
        ],
        title: const Text('Hello World', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: const [
            Row(children: [
              SizedBox(
                width: 196,
                height: 220,
                child: Card(
                  shadowColor: Colors.purpleAccent,
                  elevation: 10,
                  color: Colors.purpleAccent,
                  child: Column(children: [
                    Image(
                      image: AssetImage('assets/images/hi.webp'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                      color: Colors.transparent,
                      child: Text(
                        'purple rose',
                        style: TextStyle(color: Colors.white70, fontSize: 32),
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: 196,
                height: 220,
                child: Card(
                  shadowColor: Colors.purpleAccent,
                  elevation: 10,
                  color: Colors.purpleAccent,
                  child: Column(children: [
                    Image(
                      image: AssetImage('assets/images/hi.webp'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                      color: Colors.transparent,
                      child: Text(
                        'purple rose',
                        style: TextStyle(color: Colors.white70, fontSize: 32),
                      ),
                    ),
                  ]),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
