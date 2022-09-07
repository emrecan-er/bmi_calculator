import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  late double bmi;

  String calculateBMI(){
    bmi=weight/pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }
  String getResult(){
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  String getInterpretation() {
    if (bmi >= 25) {
      return 'Normal değerden daha fazlasınız.Daha fazla spor yapmaya çalışın';
    } else if (bmi >= 18.5) {
      return 'Değeriniz normaldir.Tebrikler!';
    } else {
      return 'Normal değerden daha düşüksünüz.Daha fazla yemek yiyebilirsiniz!';
    }
  }


}