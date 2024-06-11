import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String pressedValue = "0";

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
            const Padding(
              padding: EdgeInsets.only(right: 14, bottom: 20),
              child: Text(
                "125*20",
                style: TextStyle(
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
                    calculatorButton(buttonName: ","),
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
                    // calculatorButton(buttonName: "%"),
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
            pressedValue = buttonName;
          });
          print(pressedValue);
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
