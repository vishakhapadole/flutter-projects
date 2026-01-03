import 'package:flutter/material.dart';
import '../widgets/button_widgets.dart';
import '../widgets/display_widgets.dart';
import '../logic/calculator_logic.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String display = "0";
  double firstNumber = 0;
  String operator = "";

  void onButtonPressed(String value) {
    setState(() {
      if (value == "C") {
        display = "0";
        firstNumber = 0;
        operator = "";
      } else if ("+-*/".contains(value)) {
        firstNumber = double.parse(display);
        operator = value;
        display = "0";
      } else if (value == "=") {
        double secondNumber = double.parse(display);
        display = CalculatorLogic.calculate(
          firstNumber,
          secondNumber,
          operator,
        ).toString();
      } else {
        display = display == "0" ? value : display + value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          DisplayWidget(display: display),
          Expanded(
            child: Column(
              children: [
                ButtonWidget(["7", "8", "9", "/"], onButtonPressed),
                ButtonWidget(["4", "5", "6", "*"], onButtonPressed),
                ButtonWidget(["1", "2", "3", "-"], onButtonPressed),
                ButtonWidget(["C", "0", "=", "+"], onButtonPressed),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
