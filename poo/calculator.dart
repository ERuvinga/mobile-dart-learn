// import lib
import 'dart:io';

void main() {
  int firstnumber = 0;
  int secondnumber = 0;
  int selected = 0;
  bool error = false;

  print("====== Calculator[+-*/] =======");

  // saved first number
  print("type a first number");
  do {
    try {
      firstnumber = int.parse(stdin.readLineSync()!);
      error = false;
    } catch (exception) {
      print("value typing is not number, please enter valid Firstnumber:");
      error = true;
    }
  } while (error);

  // saved second number
  print("type a second number");
  do {
    try {
      secondnumber = int.parse(stdin.readLineSync()!);
      error = false;
    } catch (exception) {
      print("value typing is not number, please enter valid Secondnumber:");
      error = true;
    }
  } while (error);

  Calculator calc = Calculator(firstnumber, secondnumber);
  print("\nSelectionner la fonction a appeler de [1-4]");
  print(" 1 : somme\n 2: soustraction \n 3: Multiplication \n 4: division");
  do {
    try {
      selected = int.parse(stdin.readLineSync()!);
      error = false;
      if (selected < 0 || selected > 4) {
        error = true;
        print("Choix non reconnu");
      }
    } catch (exception) {
      print("Choix non reconnu");
      error = true;
    }
  } while (error);

// selected function
  switch (selected) {
    case 1:
      print(calc.getSum());
      break;
    case 2:
      print(calc.getSoustr());
      break;
    case 3:
      print(calc.getMulti());
      break;
    case 4:
      print(calc.getDiv());
      break;
  }
}

class Calculator {
  int firstNumber = 0;
  int secondNumber = 0;

  Calculator(int first, int second) {
    this.firstNumber = first;
    this.secondNumber = second;
  }

  String getSum() {
    int sum = this.firstNumber + this.secondNumber;
    return "La somme de $firstNumber + $secondNumber vaut $sum";
  }

  String getSoustr() {
    int soust = this.firstNumber - this.secondNumber;
    return "La difference de $firstNumber - $secondNumber vaut $soust";
  }

  String getMulti() {
    int multi = this.firstNumber * this.secondNumber;
    return "La multipication de $firstNumber + $secondNumber vaut $multi";
  }

  String getDiv() {
    double div = this.firstNumber / this.secondNumber;
    return "La division de $firstNumber / $secondNumber vaut $div";
  }
}

/* my token github
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
*/