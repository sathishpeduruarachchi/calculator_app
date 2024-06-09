import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 87, 37, 37),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 200,
            ),
            const Text(
              "125*20",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "2,500",
              style: TextStyle(
                  fontSize: 48,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold),
            ),
            Row(
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
                    calculatorButton(buttonName: "/"),
                    calculatorButton(buttonName: "9"),
                    calculatorButton(buttonName: "6"),
                    calculatorButton(buttonName: "3"),
                    calculatorButton(buttonName: ","),
                  ],
                ),
                Column(
                  children: [
                    calculatorButton(buttonName: "mr"),
                    calculatorButton(buttonName: "*"),
                    calculatorButton(buttonName: "-"),
                    calculatorButton(buttonName: "+"),
                    calculatorButton(buttonName: "="),
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

  Widget calculatorButton({required String buttonName}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(6),
        ),
        child:  Center(
          child: Text(
            buttonName,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
