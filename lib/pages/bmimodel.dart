import 'package:flutter/material.dart';
import 'dart:math';

class calculate {
  calculate({this.height, this.weight});
  final height;
  final weight;
  double bmi;

  String calculatebmi() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (bmi > 18.5 && bmi <= 25) {
      return 'normal';
    }
    if (bmi < 18.5) {
      return 'undereight';
    } else if (bmi > 25 && bmi <= 30) {
      return 'overweight';
    } else
      return 'obese';
  }

  String getcomment() {
    if (bmi > 18.5 && bmi <= 25) {
      return '"You have a Normal Body Weight. GOOD JOB!"';
    }
    if (bmi < 18.5) {
      return '"You have a Lower than Normal Body Weight. EAT WELL  !"';
    } else if (bmi > 25 && bmi <= 30) {
      return '"You have a Higher than Normal Body Weight. TRY TO EXERCISE MORE !"';
    } else
      return 'The Rise of Obesity has Placed the Health of an Entire Generation at Risk !"';
  }
}
