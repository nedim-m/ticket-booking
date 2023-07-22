import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeedf2),
      body: ListView(children: [
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Good Morning",
                  ),
                  Container()
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
