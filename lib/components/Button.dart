import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String label;
  Function onPress;
  var color;
  var bgColor;

  Button(
      {@required this.label,
      @required this.onPress,
      @required this.color,
      @required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text(
          this.label,
          style: TextStyle(
            fontSize: 24,
            fontFamily: "Nunito Regular",
            color: this.color,
          ),
        ),
        height: 55,
        minWidth: double.infinity,
        onPressed: onPress,
      ),
      height: 55,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: this.bgColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(top: 50),
    );
  }
}
