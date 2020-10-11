import 'package:flutter/material.dart';
import '../components/Button.dart';

class Box extends StatelessWidget {
  String fuel;

  Box({this.fuel});

  @override
  Widget build(BuildContext context) {
    void backAction() {
      Navigator.pop(context);
    }

    return Container(
      child: Column(
        children: [
          Text(
            "É mais vantajoso utilizar $fuel.",
            style: TextStyle(
              fontSize: 24,
              fontFamily: "Nunito Regular",
            ),
            textAlign: TextAlign.center,
          ),
          Button(
            label: "Voltar",
            color: Colors.white,
            bgColor: Theme.of(context).primaryColor,
            onPress: backAction,
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white.withOpacity(0.8),
      ),
      height: 220,
      padding: EdgeInsets.all(20),
      alignment: AlignmentDirectional.center,
    );
  }
}
