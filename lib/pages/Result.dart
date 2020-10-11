import 'package:flutter/material.dart';
import '../components/Box.dart';

class Result extends StatelessWidget {
  String fuel;

  Result({this.fuel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Box(fuel: fuel),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20),
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
