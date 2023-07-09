
import 'dart:io';


void main(){
/*Q1. Write a program that takes a list of numbers as input and prints the
even numbers in the list using a for loop.
Example:
Input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
Output: 2 4 6 8 10 */


List <int> numbers=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
List<int> even=[];

for(var i in numbers){
  i%2==0? even.add(i): null;

}

print(even);

/*Q2. Write a program that prints the Fibonacci sequence up to a given
number using a for loop.
Example:
Input: 10
Output: 0 1 1 2 3 5 8*/


int number = int.parse(stdin.readLineSync()!);
  int a = 0, b = 1;

stdout.write('$a  $b');
for(int i=2; i<=number; i++){
  int c= a+b; // 0+1=1 => 1+1=>2 =>2+1=3 =>2+3=5=> 3+5=8 => 13
  stdout.write(' $c ');
  a=b;   // a=1 =>1 =>2=>3=>5
  b=c; //b= 1 => 2=>3 =>5 =>8
}
print('\n');
  
/*Q3. Implement a code that checks whether a given number is prime or not.
 Example:
 Input: 17
Output: 17 is a prime number.*/


  int numb = int.parse(stdin.readLineSync()!);
  

  bool isPrime = true;
  
  if (numb < 2) {
    isPrime = false;
  } else {
    for (int i = 2; i <= numb~/ 2; i++) {
      if (numb % i == 0) {
        isPrime = false;
        break;
      }
    }
  }

  if (isPrime) {
    print('$numb is a prime number.');
  } else {
    print('$numb is not a prime number.');
  }

print('\n');

/* Q4. Implement a code that finds the factorial of a number using a while
loop or for loop.
Example:
Input: 5
Output: Factorial of 5 is 120 */

int num = int.parse(stdin.readLineSync()!);
int fact=1;
for(int i=1; i<=num; i++){
 fact *=i; // (1x1)(2x1)(3x3)(4x4)(5x1)

}
print("The factorial of $num is $fact");




/*Q5.  Write a program that calculates the sum of all the digits in a given
number using a while loop.
Example:
Input: 12345
Output: Sum of digits: 15*/


  int nums = int.parse(stdin.readLineSync()!);
  int digitSum = 0;

  while (nums > 0) {
    int digit = nums % 10;
    digitSum += digit;
    nums ~/= 10;
  }

  print("Sum of digits: $digitSum");


/*Q6Implement a code that finds the largest element in a list using a for
loop.
Example:
Input: [3, 9, 1, 6, 4, 2, 8, 5, 7]
Output: Largest element: 9 */

  List<int> randomArray = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  int largest = randomArray[0];

  for (int i = 1; i < randomArray.length; i++) {
    randomArray[i] > largest ? largest = randomArray[i] : null;
  }
  print("Largest element: $largest");

/*Q7. Write a program that prints the multiplication table of a given number
using a for loop.
Example:
Input: 5
Output:
5 x 1 = 5
5 x 2 = 10
5 x 3 = 15
...
5 x 10 = 50*/

int table = 5;

for(int i=1; i<=10 ;i++){

  print('$table x $i = ${table * i}');

}

  /*Q9. Implement a function that checks if a given string is a palindrome.
Example:
Input: "radar"
Output: "radar" is a palindrome. */

// String str=stdin.readLineSync()!;
// String reversedStr=str.split(" ").reversed.join("");
// print(reversedStr);

  String str = stdin.readLineSync()!;
  bool isPalindrome = true;

  int start = 0;
  int end = str.length - 1;

  while (start < end) {
    if (str[start] != str[end]) {
      isPalindrome = false;
      break;
    }
    start++;
    end--;
  }

  if (isPalindrome) {
    print('$str is a palindrome');
  } else {
    print('$str is not a palindrome');
  }
  


/*Q10 Write a program to display the cube of the number up to an integer. */

  int cube = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= cube; i++) {
    int cubeNumber = i * i * i;
    print('Number is : $i and cube of the $i is :$i^3 = $cubeNumber');
  }


/*Q11   Write a program to display a pattern like a right angle triangle using an
asterisk using loop.
The pattern like :
*
**
***
****                                     */
for (int i = 1; i < 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(" *");
    }
    print(" ");
  }

/*Q12  Write a program to display a pattern like a right angle triangle with a
number using loop.
The pattern like :
1
12
123
1234*/



for (int i = 1; i < 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(" $j");
    }
    print(" ");
  }


/*Q13 Write a program to make such a pattern like a right angle triangle with
a number which will repeat a number in a row.
The pattern like :
1
22
333
4444*/ 

for (int i = 1; i < 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(" $i");
    }
    print(" ");
  }

/*Q14 Write a program to make such a pattern like a right angle triangle with
the number increased by 1 using loop..
The pattern like :
1
2 3
4 5 6
7 8 9 10 */

  int currentNumber = 1;
  for (int i = 1; i < 5; i++) {
    for (int j = 1; j <= i; j++) {
      for (int k = 1; k < i; k++) {
        stdout.write(' ');
      }
      stdout.write(' $currentNumber');
      currentNumber++;
    }
    print('');
  }

/*Q15 Write a program to make a pyramid pattern with numbers increased by 1.
The pattern like :
1
2 3
4 5 6
7 8 9 10 */


  // int currentNumber = 1;

  // for (int i = 1; i < 5; i++) {
  //   for (int j = 1; j <= i; j++) {
  //     stdout.write(' $currentNumber');
  //     currentNumber++;
  //   }
  //   print('');
  // }
/*Q16 Write a program to make such a pattern as a pyramid with an asterisk.
*
* *
* * *
* * * * 
*/
  
  int totalRows = 5;

  for (int row = 1; row <= totalRows; row++) {
    for (int col = 1; col <= row; col++) {
      print('* ');
    }
    print('');
  }










/*Q17 Write a program that asks the user for their email and password. If the
email and password match a predefined set of credentials, print "User
login successful." Otherwise, keep asking for the email and password
until the correct credentials are provided. */

var userName=stdin.readLineSync();
var password=stdin.readLineSync();
bool isLogin=false;
while (isLogin== false){
  if(userName =="hira@gmail.com" && password=="123456"){
    print("Login successful");
    isLogin=true;

  }
  else{
    print("Loggin Failed");

    userName=stdin.readLineSync();
    password=stdin.readLineSync();
      }

}

/*Q18 Write a program that asks the user for their email and password. You
are given a list of predefined user credentials (email and password
combinations). If the entered email and password match any of the
credentials in the list, print "User login successful." Otherwise, keep
asking for the email and password until the correct credentials are
provided. */


  List<Map<String, String>> credentials = [
    {'email': 'hira@gmail.com', 'password': 'pass1'},
    {'email': 'heer@gmail.com', 'password': 'pass2'},
    {'email': 'samaa@gmail.com', 'password': 'pass3'}
  ];

  bool isLoggedIn = false;

  while (!isLoggedIn) {
    String email = stdin.readLineSync()!;
    String password = stdin.readLineSync()!;

    for (var credential in credentials) {
      if (credential['email'] == email && credential['password'] == password) {
        isLoggedIn = true;
        break;
      }
    }

    if (isLoggedIn) {
      print('User login successful.');
    } else {
      print('Invalid email or password. Please try again.');
    }
  }

/*Q19 Write a program that takes a list of numbers as input and prints the
numbers greater than 5 using a for loop and if-else condition. */

List<int> test = [1, 2, 35, 54, 55, 66, 7, 8, 9];
  List<int> greaterThanFive = [];
  for (int i = 0; i <= test.length; i++) {
    if (test[i] > 5) {
      greaterThanFive.add(test[i]);
    }
  }
  print(greaterThanFive);


/*Q20 Write a program that counts the number of vowels in a given string
using a for loop and if-else condition. */

String user="Hira Mushtaq";
// List <String> vowels=['a','e','i','o','u'];
int count=0;
for (int i=1; i <user.length; i++){
  String chk = user[i].toLowerCase();
  if(chk == 'a' ||  chk == 'e' || chk == 'i' || chk == 'o' || chk == 'u'){
  count++;
  }

}
print('The number of vowels in the string is: $count');



/*Q21 Implement a code that finds the maximum and minimum elements in a
list using a for loop and if-else condition. */
  List<int> randomArr = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  int maximumElem = randomArray[0];
  int minimumElem = randomArray[0];
  for (int i = 1; i < randomArray.length; i++) {
    randomArray[i] > maximumElem ? maximumElem = randomArr[i] : null;
    randomArray[i] < minimumElem ? minimumElem = randomArr[i] : null;
  }
  print("MaximumElem element: $maximumElem");
  print("Minimum element: $minimumElem");


/*Q22 Write a program that calculates the sum of the squares of all odd
numbers in a given list using a for loop and if-else condition. */

List<int> evenOdd=[1,3,5,8,9,10,11];
  int sumOfOddSquares = 0;
for(int i=0; i < evenOdd.length; i++){
  if(evenOdd[i]%2!=0){
     sumOfOddSquares += evenOdd[i] * evenOdd[i];
   

  }
}
print(sumOfOddSquares);

/*Q23 Write a program that takes a list of student details as input, where
each student is represented by a map containing their name, marks,
section, and roll number. The program should determine the grade of
each student based on their average score (assuming maximum marks
for each subject is 100) and print the student's name along with their
grade. */

List<Map<String, dynamic>> studentDetails = [
    {
      'name': 'John',
      'marks': [80, 75, 90],
      'section': 'A',
      'rollNumber': 101
    },
    {
      'name': 'Emma',
      'marks': [95, 92, 88],
      'section': 'B',
      'rollNumber': 102
    },
    {
      'name': 'Ryan',
      'marks': [70, 65, 75],
      'section': 'A',
      'rollNumber': 103
    },
  ];
  for (var student in studentDetails) {
    String name = student['name'];
    List<int> marks = student['marks'];
    double average = marks.reduce((a, b) => a + b) / marks.length;
    String grade;
    if (average >= 80) {
      grade = 'A';
    } else if (average >= 70) {
      grade = 'B';
    } else if (average >= 60) {
      grade = 'C';
    } else if (average >= 50) {
      grade = 'D';
    } else if (average >= 60) {
      grade = 'E';
    } else {
      grade = 'F';
    }

    print('Name: $name, Grade: $grade');
  }
  

/*Q24 Implement a code that finds the average of all the negative numbers in
a list using a for loop and if-else condition. */

List<int> positiveNegativeNumber = [-1, -2, -3, -4, -5, 0, 1, 2, 3, 4, 5];
  int sumnegNumber = 0;
  for (int i in positiveNegativeNumber) {
    if (i < 0) {
      sumnegNumber += i;
      double avg = positiveNegativeNumber.reduce((a, b) => a + b) /
          positiveNegativeNumber.length;
    }
  }
  print('Sum of negative numbers are: $sumnegNumber');


/*Q25 Write a program that takes a list of integers as input and returns a new
list containing only the prime numbers from the original list. Implement
the solution using a for loop and logical operations. */

List<int> inputList = [4, 7, 10, 13, 16, 19, 22, 25, 28, 31];
  List<int> primes = [];

  for (int numberz in inputList) {
    bool isPrime = true;

    if (numberz <= 1) {
      isPrime = false;
    } else {
      for (int i = 2; i <= numberz ~/ 2; i++) {
        if (numberz % i == 0) {
          isPrime = false;
          break;
        }
      }
    }

    if (isPrime) {
      primes.add(numberz);
    }
  }

  print('Original list: $inputList');
  print('Prime numbers: $primes');
}











