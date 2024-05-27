import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:testtask/pages/inspection.dart';

class Home extends StatelessWidget {
  Home({super.key});

  // List files = Directory("assets/").listSync();


  @override
  Widget build(BuildContext context) {
    // print(files);
    return  Scaffold(
      appBar:  AppBar(
        title:  const Text('Home'),
        centerTitle: true,
      ),
      body:  Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/inspection');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Swing 1'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  ),
                ],
              ),
            ),
            Divider(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/inspection');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Swing 2'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  ),
                ],
              ),
            ),
            Divider(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/inspection');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Swing 3'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  ),
                ],
              ),
            ),
            Divider(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/inspection');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Swing 4'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  ),
                ],
              ),
            ),
            Divider(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/inspection');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Swing 5'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


