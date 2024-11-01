void main() {
  // 1. Define Variables
  int myInt = 10;                     // Integer
  double myDouble = 3.14;             // Double
  String myString = "Hello, Dart!";   // String
  bool myBool = true;                  // Boolean
  List<int> myList = [1, 2, 3, 4, 5];  // List of integers

  // Print defined variables
  print("Integer: $myInt");
  print("Double: $myDouble");
  print("String: $myString");
  print("Boolean: $myBool");
  print("List: $myList");

  // 2. Type Conversion Functions
  int stringToInt(String str) {
    return int.parse(str);
  }

  double stringToDouble(String str) {
    return double.parse(str);
  }

  String intToString(int number) {
    return number.toString();
  }

  // 3. Function for Conversion
  void convertAndDisplay(String str) {
    int intValue = stringToInt(str);
    double doubleValue = stringToDouble(str);
    print('Converted to int: $intValue');
    print('Converted to double: $doubleValue');
  }

  // 4. If-Else Statements
  void checkNumber(int number) {
    if (number > 0) {
      print('$number is positive.');
    } else if (number < 0) {
      print('$number is negative.');
    } else {
      print('$number is zero.');
    }
  }

  // 5. Switch Case
  void printDayOfWeek(int day) {
    switch (day) {
      case 1:
        print('Monday');
        break;
      case 2:
        print('Tuesday');
        break;
      case 3:
        print('Wednesday');
        break;
      case 4:
        print('Thursday');
        break;
      case 5:
        print('Friday');
        break;
      case 6:
        print('Saturday');
        break;
      case 7:
        print('Sunday');
        break;
      default:
        print('Invalid day');
    }
  }

  // 6. Loops
  // For Loop
  void printNumbersFor() {
    for (int i = 1; i <= 10; i++) {
      print(i);
    }
  }

  // While Loop
  void printNumbersWhile() {
    int j = 10;
    while (j >= 1) {
      print(j);
      j--;
    }
  }

  // Do-While Loop
  void printNumbersDoWhile() {
    int k = 1;
    do {
      print(k);
      k++;
    } while (k <= 5);
  }

  // 7. Complex Example
  void complexExample(List<int> numbers) {
    for (int number in numbers) {
      print('Number: $number');

      // Check if the number is even or odd
      if (number % 2 == 0) {
        print('$number is even.');
      } else {
        print('$number is odd.');
      }

      // Categorize the number
      switch (number) {
        case int n when (n >= 1 && n <= 10):
          print('$number is small.');
          break;
        case int n when (n >= 11 && n <= 100):
          print('$number is medium.');
          break;
        case int n when (n > 100):
          print('$number is large.');
          break;
        default:
          print('$number is out of range.');
      }
    }
  }

  // Test the functions
  convertAndDisplay('25');       // Convert and display
  checkNumber(5);                // Check if number is positive, negative, or zero
  printDayOfWeek(3);             // Print day of the week
  printNumbersFor();             // Print numbers from 1 to 10
  printNumbersWhile();           // Print numbers from 10 to 1
  printNumbersDoWhile();         // Print numbers from 1 to 5

  // Complex example with a list of numbers
  List<int> numbers = [3, 7, 12, 45, 100, 150, 200];
  complexExample(numbers);
}