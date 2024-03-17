//import block
import 'dart:math';
import 'dart:convert';

//Calculate class
class Calculate {
  //private attribute
  int? _onOff;

  //With this set we can pass value in our private attribute
  void set bOnOffI(int bOnOff) {
    if (bOnOff <= 1) {
      _onOff = bOnOff;
    } else {
      _onOff = 0;
    }
  }

  //By using get method we can access the value of our private attribute
  int get bOnOffO {
    return (_onOff ?? 1);
  }

  //Methods for mathematical operations.
  double add(double num1, double num2) {
    return (num1 + num2);
  }

  double sub(double num1, double num2) {
    return (num1 - num2);
  }

  double div(double num1, double num2) {
    return (num1 / num2);
  }

  double mul(double num1, double num2) {
    return (num1 * num2);
  }

  double mod(double num1, double num2) {
    return (num1 % num2);
  }

  double sine(double degree) {
    return sin(degree * (pi / 180));
  }

  double cosine(double degree) {
    return cos(degree * (pi / 180));
  }

  double tanS(double degree) {
    return tan(degree * (pi / 180));
  }

  double cotS(double degree) {
    return (1 / tanS(degree));
  }

  double secS(double degree) {
    return (1 / cosine(degree));
  }

  double cosecS(double degree) {
    return (1 / sine(degree));
  }
}
