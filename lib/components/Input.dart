import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  String label;
  Function onChange;
  double marginTop;
  double value;

  var controller = MoneyMaskedTextController();

  Input(String label, double value, Function onChange, double marginTop) {
    controller.updateValue(value);
    this.label = label;
    this.value = value;
    this.onChange = onChange;
    this.marginTop = marginTop;
  }

  void onChangeInput(value) {
    onChange(controller.numberValue);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: Text(
              this.label,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Nunito Regular",
                fontSize: 24,
              ),
            ),
            width: 100,
          ),
          SizedBox(
            width: 20,
          ),
          Flexible(
            child: TextFormField(
              controller: controller,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: "Big Shoulders Display Regular",
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              onChanged: onChangeInput,
            ),
          ),
        ],
      ),
      margin: EdgeInsets.only(top: this.marginTop),
    );
  }
}
