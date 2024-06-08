import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Text("125*20"),
          const Text("2,500"),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.green),
                    child: Text("mc"),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}