class CalculatorBrain{

  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double bmi = 0;

  String CalculateBmi(){
    bmi = weight/((height/100)*(height/100));
    return bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(bmi >= 25){
      return 'Overweight';
    }else if(bmi >= 18.5){
      return 'Normal';
    }
    return 'Underweight';
  }

  String getComment(){
    if(bmi >= 25){
      return 'You have a higher than a normal body weight. Try to exercise more!';
    }else if(bmi >= 18.5){
      return 'You have normal body Weight. Good job!';
    }
    return 'You have a lower than a normal body weight. You can eat a bit more!';
  }

}