import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double bmi=0;

  CalculatorBrain({required this.weight, required this.height});

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }
  // double calculateBMI() {
  //   double _bmi = weight / pow(height / 100, 2);
  //   return double.parse(_bmi.toStringAsFixed(1));
  // }

  String get_result() {
    if (bmi >= 30.0) {
      return 'Obez';
    } else if (bmi >= 25.0 && bmi <30.0 ) {
      return 'Şişman';
    } else if (bmi > 18.5 && bmi<25.0) {
      return 'Normal';
    } else {
      return 'Zayıf';
    }
  }

  String getInfo() {
    if (bmi >= 30.0) {
      return 'Kilonuz çok yüksek. Egzersize ve diyete ihtiyacınız var. Profesyonel yardım alabilirsiniz. ';
    } else if (bmi >= 25.0 && bmi <30.0) {
      return 'Kilonuz normalden yüksek. Egzersiz ve diyetle daha sağlıklı bir kiloya gelebilirsiniz.';
    } else if (bmi > 18.5 && bmi<25.0) {
      return 'Kilonuz boyunuza göre gayet sağlıklı. Fakat egzersizi ihmal etmeyiniz. ';
    } else {
      return 'Kilonuz boyunuza göre az. Kalori alımınızı sağlıklı bir şekilde arttırıp, egzersiz yapmayı ihmal etmeyiniz.';
    }
  }
}
