import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double num1 = 0, num2 = 0, num3 = 0, ergebnis = 0;

  final firstController = TextEditingController();
  final secondController = TextEditingController();

  void dispose1() {
    // Clean up the controller when the widget is disposed.
    firstController.dispose();
    super.dispose();
  }

  void dispose2() {
    // Clean up the controller when the widget is disposed.
    secondController.dispose();
    super.dispose();
  }

  void add(double num1, double num2) {
    setState(() {
      ergebnis = num1 + num2;
    });
  }

  void subtract(double num1, double num2) {
    setState(() {
      ergebnis = num1 - num2;
    });
  }

  void multiply(double num1, double num2) {
    setState(() {
      ergebnis = num1 * num2;
    });
  }

  void divide(double num1, double num2) {
    setState(() {
      ergebnis = num1 / num2;
    });
  }

  void clear() {
    setState(() {
      ergebnis = 0;
      firstController.clear();
      secondController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Output: " + ergebnis.toString(),
          style: Theme.of(context).textTheme.headline1,
        ),
        Container(
          width: 290,
          child: TextField(
            keyboardType: TextInputType.number,
            // The validator receives the text that the user has entered.
            decoration: InputDecoration(hintText: '0'),
            controller: firstController,
          ),
        ),
        Container(
          width: 290,
          child: TextField(
            keyboardType: TextInputType.number,
            // The validator receives the text that the user has entered.
            decoration: InputDecoration(hintText: '0'),
            controller: secondController,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("+"),
              color: Colors.green[300],
              onPressed: () {
                add(
                  double.parse(firstController.text),
                  double.parse(secondController.text),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
            ),
            RaisedButton(
                child: Text("-"),
                color: Colors.green[300],
                onPressed: () {
                  subtract(
                    double.parse(firstController.text),
                    double.parse(secondController.text),
                  );
                })
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text("*"),
                color: Colors.green[300],
                onPressed: () {
                  multiply(
                    double.parse(firstController.text),
                    double.parse(secondController.text),
                  );
                }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
            ),
            RaisedButton(
                child: Text("/"),
                color: Colors.green[300],
                onPressed: () {
                  divide(
                    double.parse(firstController.text),
                    double.parse(secondController.text),
                  );
                })
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
        ),
        RaisedButton(
          child: Text("Clear"),
          color: Colors.green[300],
          onPressed: clear,
        ),
      ],
    );
  }
}
