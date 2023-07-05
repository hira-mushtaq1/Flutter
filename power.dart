// import "dart:math";
// for the power opertation we need to import math library from dart

// import 'dart:io';

// void main() {
  // num base=2;
  // num exponent=5;
  // num result=pow(base, exponent);  //2^5=32
  // print(result);

//list methods

// List studenNames=["A", "B", "C"];
// print(studenNames[studenNames.length-2]); // list ki length m se agr -1 kryngy tw wo last index de de ga pr agr second last chye tw -2``

// List friends=["Hira", "Abuzar Thanvi", "Saamaa", "Zaigham", "Laveezah", "Ansa"];
// print(friends[friends.length-4]);
// friends.replaceRange(5, 6, [ "Heer"]); // starting index, ending index , replace value ending index se ek km leta h
// print(friends);

// friends.replaceRange(friends.length-1, friends.length,["Heer"]);
// print(friends);

// friends.sort();
// print(friends.reversed);
// descending order,,,,,clear(to delete all items),   add( add item on last),  ekse zda add krny k lye(addAll[ese daingy]),,,...........insert(index, element) specific place pr insert,,, insertAll zda add krny k lye.............List.of(friends.reversed) iss trhn list hi rhyga output m [] ese hi ayega

// friends.remove("Laveezah");
// print(friends);

// friends.removeAt(5);

// friends.removeLast();
// print(friends);

// friends.sort();
// print(List.of(friends.reversed));

// List rl=[21,43,56,78,98,65,98];
// rl.removeWhere((e) => e>50); // e phr arrow function phr condition
// print(rl);

// rl.retainWhere((element) => element>50);
// print(rl);

// rl.map((e) => e<50);
// print(rl);

//maps in dart

  // Map friends = {"name": "Hira", "age":23, "rollno":1, "class":"X"};
  // print(friends.keys);
  // print( friends.values);
  // print(friends["name"]);

//<String, dynamice>means keys are only of String Type but values might be of different type,,,putifabsebt agr na ho tw add ho tw update nh ..//agr key update krni ho tw ifAbsent ki tw kia kryn

//   List <Map <String, dynamic>> usersEligibility = [
//     {'name': 'John', 'eligible': true},
//     {'name': 'Alice', "eligible": false},
//     {'name': 'Mike', "eligible": true},
//     {'name': 'Sarah', "eligible": true},
//     {'name': 'Tom', "eligible": false},
//   ];

//   usersEligibility.removeWhere((e) => e['eligible'] == false);
//  usersEligibility.retainWhere((value) => value['eligible'] == true);
//   print(usersEligibility);

// List<int> unSortedList = [3, 2, 6, 7, 0, 8, 5, 1];
// print(unSortedList.sort());

  //   List<dynamic> originalLis = ['apple', 'mango', 'banana', 'grapes'];
  // int n = 2;
  // print('Original List: $originalLis');
  // print('Number of elements to print: $n');
  // List newLis = originalLis.take(n).toList();
  // print(newLis);

// Map <String, Map<String, dynamic>> product = {
//     'stock': {
//       'sneakers': {
//         'name': 'women sneakers',
//         'price': 2345,
//         'quantity': 4,
//       },
//       'cluches': {
//         'name': 'women cluches',
//         'price': 2000,
//         'quantity': 0,
//       },
//       'watches': {
//         'name': 'women watches',
//         'price': 1000,
//         'quantity': 5,
//       },
//     }
//   };

//   String productKey = 'watches';
//   String? price =product['stock']?[productKey]?['price'].toString();
//   ;
//   String? quantity =product['stock']?[productKey]?['quantity'].toString();
//   ;

// print(productKey );
// print(price);
// print(quantity);
  // if (productKey != null && price != null) {
  //   print('Productname: $productKey');
  //   print('Price: $price');
  //   print('quantity: $quantity');
  // } else {
  //   print('Product  not found.');
  // }
// pre increment
//a=0;
//a= ++abc post m bd m add hgi, phly value assign hti ;
//a=a++ pre m phly add hta h 1 or then store hta h var m

//

// post m hmesha store hjta h
// abc=4;
// a=5
// c=9
// d=(5 - (10))+(4x3)=-5+12=7;           abc=2, d= 6, q= 18
// q=6 x 3= 18;
// n= 18 + (19 x 2) = 18 + 38 = 56

// loops

// 4 loop while, while 2 , for in range, for(data)

// structure of for loop:
// for(var i=0 (starting point); a <=12(ending point) , i++ (steps of farwarding)) for table
  // int number = 5;
  // for (var i = 1; i <= 10; i++) {
  // int mul=i* number;
  // print("$number x$i = $mul"); // for i line use curley bracket

  //   print("$number x$i = ${number * i}");
  // }

  // List studentNames = ["bilal", "abuzar", "hira", "usama"];
  // for (var i = 0; i < studentNames.length; i++) {
  //   print(studentNames[i]);
  // }

  // List numbers = [3, 5, 6, 1, 9, 10, 4];
  // List evenNumbers = [];
  // List oddNumbers = [];
  // for (var i in numbers) {
  //   if (i % 2 == 0) {
  //     evenNumbers.add(i);
  //   } else {
  //     oddNumbers.add(i);
  //   }
  // }

  // print(evenNumbers);
  // print(oddNumbers);

  //  for (var i = 0; i<numbers.length; i++) {
  //   if(numbers[i]%2==0){
  //     evenNumbers.add(numbers[i]);

  //   }else{
  //     oddNumbers.add(numbers[i]);
  //   }

  //  }

  // numbers.forEach((i) {
  //   i % 2 == 0?
  //     evenNumbers.add(i):

  //     oddNumbers.add(i);

  // });

  // print(evenNumbers);
  // print(oddNumbers);

// var studenNames= stdin.readLineSync(); // for input

// var abc=0;
// while(abc<5){
//   print('$abc hello');
//   abc++;
// }

// var userName=stdin.readLineSync();
// var password=stdin.readLineSync();
// bool isLogin=false;
// while (isLogin== false){
//   if(userName =="hira@gmail.com" && password=="123456"){
//     print("Login successful");
//     isLogin=true;

//   }
//   else{
//     print("Loggin Failed");

//     userName=stdin.readLineSync();
//     password=stdin.readLineSync();
//       }
// }
  

  
// String str = stdin.readLineSync()!;
//   String reversedStr = str.split(" ").reversed.join("");
//   print(reversedStr);
//  bool isPalindrome= false;
// while(isPalindrome==false){
//  if(str=='level' && reversedStr=='level'){
//   print(" is palindrome");
//   isPalindrome=true; }
//  else{
//   print('not palindrome');
//   str = stdin.readLineSync()!;


//  }
//  }



  //  List<int> test = [1, 2, 35, 54, 85, 76, 7, 8, 9];
  // List<int> greaterThanFive = [];
  // for (int i = 1; i < test.length; i++) {
  //   if (test[i] > 5) {
  //     greaterThanFive.add(test[i]);
  //   }
  // }
  // print(greaterThanFive);

// String user = "Mehar Bilal Rasheed";
// // List <String> vowels=['a','e','i','o','u'];
//   int count = 0;
//   for (int i = 1; i < user.length; i++) {
//     String chk = user[i].toLowerCase();
//     if (chk == 'a' || chk == 'e' || chk == 'i' || chk == 'o' || chk == 'u') {
//       count++;
//     }
//   }
//   print('The number of vowels in the string is: $count');
  // List<int> randomArray = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  // int largest = randomArray[0];
  // int smallest = randomArray[0];
  // for (int i = 1; i < randomArray.length; i++) {
  //   randomArray[i] > largest ? largest = randomArray[i] : null;
  //   randomArray[i] < smallest ? smallest = randomArray[i] : null;
  // }
  // print("Largest element: $largest");
  // print("smallest element: $smallest");
// List<int> evenOdd = [1, 3, 5, 8, 9, 10, 11];
//   int sum=0;
//   for (int i = 0; i < evenOdd.length; i++) {
//     if (evenOdd[i] % 2 != 0) {
//       sum += evenOdd[i]*evenOdd[i];
//     }
//   }
//   print(sum);
 

// List<Map<String, dynamic>> studentDetails = [
//     {
//       'name': 'John',
//       'marks': [80, 75, 90],
//       'section': 'A',
//       'rollNumber': 101
//     },
//     {
//       'name': 'Emma',
//       'marks': [95, 92, 88],
//       'section': 'B',
//       'rollNumber': 102
//     },
//     {
//       'name': 'Ryan',
//       'marks': [70, 65, 75],
//       'section': 'A',
//       'rollNumber': 103
//     },
//   ];
//   int total = 100;

//   bool isSearched = false;
//   while (!isSearched) {
//     String name = stdin.readLineSync()!;
//     String marks = stdin.readLineSync()!;
//     String section = stdin.readLineSync()!;
//     String rollNumber = stdin.readLineSync()!;

//     for (var i in studentDetails) {
//       if (i['name'] == name &&
//           i['marks'] == marks &&
//           i['section'] == section &&
//           i['rollNumber'] == rollNumber) {
//         print('$name and $marks');
//         isSearched = true;
//         break;
//       }
//     }

//     if (isSearched) {
//       print('User login successful.');
//     } else {
//       print('Invalid email or password. Please try again.');
//     }
//   }



// List<Map<String, dynamic>> studentDetails = [
//     {
//       'name': 'John',
//       'marks': [80, 75, 90],
//       'section': 'A',
//       'rollNumber': 101
//     },
//     {
//       'name': 'Emma',
//       'marks': [95, 92, 88],
//       'section': 'B',
//       'rollNumber': 102
//     },
//     {
//       'name': 'Ryan',
//       'marks': [70, 65, 75],
//       'section': 'A',
//       'rollNumber': 103
//     },
//   ];
//   for (var student in studentDetails) {
//     String name = student['name'];
//     List<int> marks = student['marks'];
//     double average = marks.reduce((a, b) => a + b) / marks.length;
//     String grade = getGrade(average);

//     print('Name: $name, Grade: $grade');
//   }
// }

// String getGrade(double average) {
//   if (average >= 90) {
//     return 'A';
//   } else if (average >= 80) {
//     return 'B';
//   } else if (average >= 70) {
//     return 'C';
//   } else if (average >= 60) {
//     return 'D';
//   } else {
//     return 'F';
//   }

// List<int> positiveNegativeNumber=[-1,-2,-3,-4,-5,0,1,2,3,4,5];
// int  sumnegNumber=0;
// for (int i in positiveNegativeNumber){
//   if(i < 0){
//    sumnegNumber+=i;
//     double avg=positiveNegativeNumber.reduce((a,b)=>a+b)/positiveNegativeNumber.length;
    

//   }
// }
// print(sumnegNumber);

// List<Map<String, dynamic>> studentDetails = [
//     {
//       'name': 'John',
//       'marks': [80, 75, 90],
//       'section': 'A',
//       'rollNumber': 101
//     },
//     {
//       'name': 'Emma',
//       'marks': [95, 92, 88],
//       'section': 'B',
//       'rollNumber': 102
//     },
//     {
//       'name': 'Ryan',
//       'marks': [70, 65, 75],
//       'section': 'A',
//       'rollNumber': 103
//     },
//   ];
//   for (var student in studentDetails) {
//     String name = student['name'];
//     List<int> marks = student['marks'];
//     double average = marks.reduce((a, b) => a + b) / marks.length;
//     String grade ;
//     if(average>=80){
//       grade='A';
//     }
//     else if(average>=70 ){
//       grade='B';
//     }
//     else if(average>=60){
//       grade='C';
//     }
//     else if(average>=50){
//       grade='D';
//     }
//     else if(average>=60){
//       grade='E';
//     }
//     else{
//       grade='F';
//     }

//     print('Name: $name, Grade: $grade');
//   }



// String getGrade(double average) {
//   if (average >= 90) {
//     return 'A';
//   } else if (average >= 80) {
//     return 'B';
//   } else if (average >= 70) {
//     return 'C';
//   } else if (average >= 60) {
//     return 'D';
//   } else {
//     return 'F';
//   }

// List<Map<String, dynamic>> studentDetails = [
//     {
//       'name': 'John',
//       'marks': [80, 75, 90],
//       'section': 'A',
//       'rollNumber': 101
//     },
//     {
//       'name': 'Emma',
//       'marks': [95, 92, 88],
//       'section': 'B',
//       'rollNumber': 102
//     },
//     {
//       'name': 'Ryan',
//       'marks': [70, 65, 75],
//       'section': 'A',
//       'rollNumber': 103
//     },
//   ];
//   for (var student in studentDetails) {
//     String name = student['name'];
//     List<int> marks = student['marks'];
//     double average = marks.reduce((a, b) => a + b) / marks.length;
//     String grade;
//     if (average >= 80) {
//       grade = 'A+';
//     } else if (average >= 79 && average < 80) {
//       grade = 'A';
//     } else if (average >= 69 && average < 70) {
//       grade = 'B';
//     } else if (average >= 50 && average < 60) {
//       grade = 'C';
//     } else if (average >= 40 && average < 50) {
//       grade = 'D';
//     } else if (average >= 30 && average < 40) {
//       grade = 'E';
//     } else {
//       grade = 'F';
//     }

//     print('Name: $name, Grade: $grade');
//   }






// int cube = int.parse(stdin.readLineSync()!);
//   for (int i = 1; i <= cube; i++) {
//     int cubeNumber = i * i * i;
//     print('Number is : $i and cube of the $i is :$i^3 = $cubeNumber');

//   }


  //   int n = 4; // Number of rows in the pyramid

  //   int num = 1;

  //   for (int i = 1; i <= n; i++) {
  //     // String str= " ";
  //     for (int j = 1; j <= i; j++) {
  //       print('$num ');
  //       num++;
  //     }
  //     print('$num');
  //   }
  // }

void main() 
{
  // List<int> inputList = [2, 3, 4, 5, 6, 7, 8, 9, 10];
  // List<int> primes = [];

  // for (int number in inputList) {
  //   bool isPrime = true;

  //   if (number <= 1) {
  //     isPrime = false;
  //   } else {
  //     for (int i = 2; i <= number ~/ 2; i++) {
  //       if (number % i == 0) {
  //         isPrime = false;
  //         break;
  //       }
  //     }
  //   }

  //   if (isPrime) {
  //     primes.add(number);
  //   }
  // }
  //   print('Original list: $inputList');
  // print('Prime numbers: $primes');

  // int rows = 4;

  // for (int i = 1; i <= rows; i++) {
  //   String rw="";
  //   for (int j = 1; j <= rows - i; j++) {
  //     print(' ');
  //   }

  //   for (int k = 1; k <= 2 * i - 1; k++) {
  //     rw+=('*').toString();
  //   }

  //   print(rw);
  // }
  
  // for (int i = 1; i <= rows; i++) {
  //   String rw = "";

  //   for (int j = 1; j <= i; j++) {
  //     rw += ('*').toString();
  //   }
  //   print(rw);
  // }
// List<int> test = [1, 2, 35, 54, 55, 66, 7, 8, 9];
//   List<int> greaterThanFive = [];
//   for (int i = 0; i <= test.length; i++) {
//     if (test[i] > 5) {
//       greaterThanFive.add(test[i]);
//     }
//   }
//   print(greaterThanFive);



int rows= 4;
int num=1;
// for (int i in 4){}
for (int i=1; i<=rows; i++){
  for(int j=1; j<i; j++ ){
    num+=1;


  }
  print(num);

}



}


  
  


