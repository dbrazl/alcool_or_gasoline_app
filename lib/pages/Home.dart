import 'package:flutter/material.dart';
import '../pages/Result.dart';
import '../components/Input.dart';
import '../components/Button.dart';

class Home extends StatefulWidget {
  double gasoline = 0;
  double alcool = 0;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void onGasolineChange(value) {
    setState(() {
      widget.gasoline = double.parse("$value");
    });
  }

  void onAlcoolChange(value) {
    setState(() {
      widget.alcool = double.parse("$value");
    });
  }

  void onCalculate() {
    double ratio = widget.alcool / widget.gasoline;

    String fuel = ratio >= 0.7 ? "gasolina" : "alcool";

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Result(fuel: fuel)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              child: Image.asset(
                "assets/images/fuel.png",
                height: 80,
                width: 80,
              ),
              margin: EdgeInsets.only(top: 100),
            ),
            Container(
              child: Text(
                "Informe o preço do combustível",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Nunito Regular",
                    fontSize: 24),
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.symmetric(vertical: 50),
            ),
            Input("Gasolina", widget.gasoline, onGasolineChange, 0),
            Input("Alcool", widget.alcool, onAlcoolChange, 30),
            Button(
              label: "Calcular",
              onPress: onCalculate,
              color: Theme.of(context).primaryColor,
              bgColor: Colors.white.withOpacity(0.8),
            ),
          ],
        ),
        margin: EdgeInsets.symmetric(horizontal: 20),
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
