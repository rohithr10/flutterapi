import 'dart:io';

// void main() {    
//     stdout.write("What's your name? ");
//     String? name = stdin.readLineSync();

//     print("Hi, $name! What is your age?");
//     String age = stdin.readLineSync()!;


//     int yearsToHunderd = 100 - int.parse(age);
//     print("$name, You have $yearsToHunderd years to be 100");
// }


// void maintwo() {    
//     stdout.write("Hi, please choose a number: ");
//     String? number = stdin.readLineSync();

//     int getnumber = int.parse(number!);
    
//     if (getnumber % 2 == 0) {
//         print("Chosen number is even");
//     }
//     else {
//         print("Chosen number is odd");
//     }
// }

// void main() {
//   List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

//   for (var i in a) {
//     if (i < 5) {
//       print(i);
//     }
//   }
  
//   // One liner
//   print([for (var i in a) if (i < 5) i]);
// }




// void main() {
//   stdout.write("Please choose a number: ");
//   String? number = stdin.readLineSync();
//   int result = int.parse(number!);
//   for (var i = 1; i <= result; i++) {
//     if (result % i == 0) {
//       print(i);
//     }
//   }
// }

// void main() {
//   List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
//   List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
//   Set<int> c = {};

//   for (var i in a) {
//     for (var j in b) {
//       if (i == j) {
//         c.add(i);
//       }
//     }
//   }
//   print(c.toList());

//   // One liner using set intersections
//   print(Set.from(a).intersection(Set.from(b)).toList());
// }

  void main() {
  stdout.write("Please give a word: ");
  String? changed = stdin.readLineSync();
  String input = changed!.toLowerCase();
  String revInput = input.split('').reversed.join('');
  
  // Ternary operator
  input == revInput
      ? print("The word is palindrome")
      : print("The word is not a palindrome");
}