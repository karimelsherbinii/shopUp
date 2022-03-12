import 'dart:html';

import 'package:flutter/material.dart';

import 'package:e_commerce/utils/constants/colors.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  String? title;
  HomeScreen({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          // Container(),

          Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  color: Colors.blue,
                ),
                child: const Center(
                    child: Text(
                  'Shop UP',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Test for done'),
              Text('Test for done'),
              Text('Test for done'),
              Text('Test for done'),
              Text('Test for done'),
              Text('Test for done'),
              Image.asset(
                'assets/images/tshirt.png',
                // width: 100,
                // height: 100,
              )
            ],
          ),
          Positioned(
            top: size.height / 10,
            left: size.width / 12,
            child: Container(
              height: size.height / 6,
              width: size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue, Colors.redAccent]),
                boxShadow: [BoxShadow()],
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Image.asset(
                    'assets/images/tshirt.png',
                    width: 100,
                    height: 100,
                  )),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text('data'),
                      ElevatedButton(
                        style: const ButtonStyle(),
                        onPressed: () {}, child: Text('see more'))
                    ],
                  ))
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
