import 'dart:math';

class BmiCalculator {
  final int weight;
  final int height;

  BmiCalculator(this.weight, this.height);

  double calculateBmiValue() {
    return weight / pow(height / 100, 2);
  }

  //bmi range
  String getBmiRange() {
    double _bmValue = calculateBmiValue();
    if (_bmValue < 16.0) {
      return "<16.0";
    } else if (16.0 <= _bmValue && _bmValue < 16.9) {
      return "16.0 - 16.9";
    } else if (17 <= _bmValue && _bmValue < 18.5) {
      return "17.0 - 18.4";
    } else if (18.5 <= _bmValue && _bmValue < 25) {
      return "18.5 - 24.9";
    } else if (25 <= _bmValue && _bmValue < 30) {
      return "25 - 29.9";
    } else if (30 <= _bmValue && _bmValue < 35) {
      return "30 - 34.9";
    } else if (35 <= _bmValue && _bmValue < 40) {
      return "35 - 39.9";
    } else {
      return ">= 40";
    }
  }

  //bmi status
  String getBmiStatus() {
    double _bmValue = calculateBmiValue();
    if (_bmValue < 16.0) {
      return "Underweight (Severe thinness)";
    } else if (16.0 <= _bmValue && _bmValue < 18.5) {
      return "Underweight (Mild thinness)";
    } else if (18.5 <= _bmValue && _bmValue < 25) {
      return "Normal range";
    } else if (25 <= _bmValue && _bmValue < 30) {
      return "Overweight (Pre-obese)";
    } else if (30 <= _bmValue && _bmValue < 35) {
      return "Obese (Class I)";
    } else if (35 <= _bmValue && _bmValue < 40) {
      return "Obese (Class II)";
    } else {
      return "Obese (Class III)";
    }
  }

  //bmi value
  String getBmiValue() {
    double _bmValue = calculateBmiValue();
    return _bmValue.toStringAsFixed(1);
  }

  //bmi descriptive
  String getBmiDescription() {
    double _bmValue = calculateBmiValue();
    if (_bmValue < 16.0) {
      return "You have body weight below limits. Need diet";
    } else if (16.0 <= _bmValue && _bmValue < 18.5) {
      return "One step close to normal. Normalize your diet";
    } else if (18.5 <= _bmValue && _bmValue < 25) {
      return "You have normal body weight. Good Job!";
    } else if (25 <= _bmValue && _bmValue < 30) {
      return "You have increased body weight above normal.";
    } else if (30 <= _bmValue && _bmValue < 35) {
      return "Your body weight one step to danger. Loose weight";
    } else if (35 <= _bmValue && _bmValue < 40) {
      return "Your body weight at danger. Need to exercise";
    } else {
      return "You have abnormal body weight. Need to loose weight";
    }
  }
}
