import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {

  String name;

  WelcomePage({required this.name});

  @override
  Widget build(BuildContext){
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('WELCOME : ${name}'),

            ],
          ),
        )
    );
  }
}








