import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String pressedValue = "0";
  String calculationValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 180,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14, bottom: 20),
              child: Text(
                calculationValue,
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 30),
              child: Text(
                pressedValue,
                style: const TextStyle(
                    fontSize: 48,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    calculatorButton(buttonName: "mc"),
                    calculatorButton(buttonName: "c"),
                    calculatorButton(buttonName: "7"),
                    calculatorButton(buttonName: "4"),
                    calculatorButton(buttonName: "1"),
                    calculatorButton(buttonName: "%"),
                  ],
                ),
                Column(
                  children: [
                    calculatorButton(buttonName: "m+"),
                    calculatorButton(buttonName: "x"),
                    calculatorButton(buttonName: "8"),
                    calculatorButton(buttonName: "5"),
                    calculatorButton(buttonName: "2"),
                    calculatorButton(buttonName: "0"),
                  ],
                ),
                Column(
                  children: [
                    calculatorButton(buttonName: "m-"),
                    calculatorButton(buttonName: "/", isGreenButton: true),
                    calculatorButton(buttonName: "9"),
                    calculatorButton(buttonName: "6"),
                    calculatorButton(buttonName: "3"),
                    calculatorButton(buttonName: "."),
                  ],
                ),
                Column(
                  children: [
                    calculatorButton(buttonName: "mr"),
                    calculatorButton(buttonName: "*", isGreenButton: true),
                    calculatorButton(buttonName: "-", isGreenButton: true),
                    calculatorButton(buttonName: "+", isGreenButton: true),
                    calculatorButton(
                        buttonName: "=",
                        isGreenButton: true,
                        isEqualButton: true),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget calculatorButton(
      {required String buttonName,
      bool isGreenButton = false,
      bool isEqualButton = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            if (buttonName == "c") {
              pressedValue = "0";
              calculationValue = "";
            } else if (buttonName != "+" &&
                buttonName != "-" &&
                buttonName != "*" &&
                buttonName != "/" &&
                buttonName != "=" &&
                buttonName != "mc" &&
                buttonName != "m+" &&
                buttonName != "m-" &&
                buttonName != "mr" &&
                buttonName != "x" &&
                buttonName != "%") {
              if (pressedValue == "0") {
                pressedValue = buttonName;
              } else {
                pressedValue += buttonName;
              }
            } else if (buttonName == "+" ||
                buttonName == "-" ||
                buttonName == "*" ||
                buttonName == "/") {
              calculationValue = pressedValue + buttonName;
              pressedValue = "0";
            } else if (buttonName == "=") {
              double result = 0;
              final double num1 = double.parse(calculationValue.substring(0, calculationValue.length - 1));
              final double num2 = double.parse(pressedValue);

              switch (calculationValue[calculationValue.length - 1]) {
                case '+':
                  result = num1 + num2;
                  break;
                case '-':
                  result = num1 - num2;
                  break;
                case '*':
                  result = num1 * num2;
                  break;
                case '/':
                  result = num1 / num2;
                  break;
              }
              pressedValue = result.toString();
              calculationValue = "";
            }
          });
        },
        child: Container(
          height: isEqualButton ? 116 : 50,
          width: 70,
          decoration: BoxDecoration(
            color: isGreenButton ? Colors.green : Colors.grey,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Text(
              buttonName,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
