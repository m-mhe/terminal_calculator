//import block
import 'dart:io';
import 'calculate.dart';
//import 'dart:math';
//import 'dart:convert';

//Code execution block
void main() {
  //String? input = stdin.readLineSync();
  //print("You wrote: $input");
  //Creating calc object.
  Calculate calc = Calculate();
  print("Type '1' for turning on this calculator:");
  int ac = int.parse((stdin.readLineSync()) ?? '0');
  calc.bOnOffI = ac;

  //runing while loop for performing math operation
  while ((calc.bOnOffO) == 1) {
    print(
        "Type 'add' for addition\nType 'sub' for subtraction\nType 'div' for division\nType 'mul' for multiplication\nType 'mod' for finding remainder of a division\nType 'sin' for finding the value of sine with degree\nType 'cos' for finding the value of cosine with degree\nType 'sec' for finding the value of sec with degree\nType 'cosec' for finding the value of cosec with degree\nType 'tan' for finding the value of tan with degree\nType 'cot' for finding the value of cot with degree\nType '0' for turning off this calculator-");
    String function = (stdin.readLineSync() ?? 'null');
    switch (function) {
      case 'add':
        print("Type your first and second number for calculate:");
        double one = double.parse(stdin.readLineSync() ?? '0');
        double two = double.parse(stdin.readLineSync() ?? '0');
        print(calc.add(one, two).toStringAsFixed(2));
      case 'sub':
        print("Type your first and second number for calculate:");
        double one = double.parse(stdin.readLineSync() ?? '0');
        double two = double.parse(stdin.readLineSync() ?? '0');
        print(calc.sub(one, two).toStringAsFixed(2));
      case 'div':
        print("Type your first and second number for calculate:");
        double one = double.parse(stdin.readLineSync() ?? '0');
        double two = double.parse(stdin.readLineSync() ?? '0');
        print(calc.div(one, two).toStringAsFixed(2));
      case 'mul':
        print("Type your first and second number for calculate:");
        double one = double.parse(stdin.readLineSync() ?? '0');
        double two = double.parse(stdin.readLineSync() ?? '0');
        print(calc.mul(one, two).toStringAsFixed(2));
      case 'mod':
        print("Type your first and second number for calculate:");
        double one = double.parse(stdin.readLineSync() ?? '0');
        double two = double.parse(stdin.readLineSync() ?? '0');
        print(calc.mod(one, two).toStringAsFixed(2));
      case 'sin':
        print("Type your number for calculate:");
        double one = double.parse(stdin.readLineSync() ?? '0');
        print(calc.sine(one).toStringAsFixed(2));
      case 'cos':
        print("Type your number for calculate:");
        double one = double.parse(stdin.readLineSync() ?? '0');
        print(calc.cosine(one).toStringAsFixed(2));
      case 'sec':
        print("Type your number for calculate:");
        double one = double.parse(stdin.readLineSync() ?? '0');
        print(calc.secS(one).toStringAsFixed(2));
      case 'cosec':
        print("Type your number for calculate:");
        double one = double.parse(stdin.readLineSync() ?? '0');
        print(calc.cosecS(one).toStringAsFixed(2));
      case 'tan':
        print("Type your number for calculate:");
        double one = double.parse(stdin.readLineSync() ?? '0');
        print(calc.tanS(one).toStringAsFixed(2));
      case 'cot':
        print("Type your number for calculate:");
        double one = double.parse(stdin.readLineSync() ?? '0');
        print(calc.cotS(one).toStringAsFixed(2));
      case 'null':
        print("Please type something!");
      case '0':
        calc.bOnOffI = int.parse(function);
        print("----------------Calculator is turned off----------------");
      default:
        print("Error: Invlaid input");
    }
  }
}
