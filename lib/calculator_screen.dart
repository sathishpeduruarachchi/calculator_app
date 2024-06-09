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
              height: 170,
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
                    Container(
                      decoration: const BoxDecoration(color: Colors.green),
                      child: const Text("mc"),
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Colors.green),
                      child: const Text("mc"),
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Colors.green),
                      child: const Text("mc"),
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Colors.green),
                      child: const Text("mc"),
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Colors.green),
                      child: const Text("mc"),
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Colors.green),
                      child: const Text("mc"),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
