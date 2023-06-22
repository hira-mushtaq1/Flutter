import "dart:io";
import "dart:math";

void main() {
  //Q1. Createc two integers variables length and breadth and assign values then check if the values makes a square or a rectangle.

  int length = 4;
  int width = 5;

  if (length == width) {
    print("A square");
  } else {
    print("A rectangle ");
  }

  print("---------------------------------------------------------");
//Q2. Take two variables and store age then using if/else condition to determine oldest and youngest among them

  int Usama = 25;
  int Bilal = 30;
  if (Usama > Bilal) {
    print("Usama is older than Bilal ");
  } else {
    print("Usama is younger than Bilal ");
  }
  print("-----------------------------------------------");
//Q3 A student will not be allowed to sit in exam if his/her attendance is less than 75%.Create integer variables and assign value: Number of classes held=16, number of classes attended=10, and print percentage of class attended, Is student is allowed to sit in exam or not?

  int totalClasses = 16;
  int classAttended = 10;
  double percentage =
      double.parse(((classAttended / totalClasses) * 100).toStringAsFixed(2));
  if (percentage < 75) {
    print(
        "Not allowed because you maintain: $percentage which is less than 75%");
  } else {
    print("Collect your Admit card from the admin block");
  }
  print(
      "----------------------------------------------------------------------");

//Q4 Create integer varriable assign any year to end it and check if a year is a leap year or not? If a year is divisible by 4 then it is a leap year but if the year is century year like 2000,1900,2100 then it must be divisble by 400. i.e, use % operator

  int year = 2000;
  if (year % 4 == 0) {
    print("A leap year");
  } else {
    print("Not a leap year");
  }

  print(
      "----------------------------------------------------------------------");

/* Q.5 Write a program to read temperature in centigrade and display a suitable message according to temperature:
You have num variable temperature = 42;
Now print the message according to temperature:
temp <0, then freezing temperature
temp 0-10 very cold weather
temp 10-20 cold weather
temp 20-30 normal temp
temp 30-40 its hot
temp >=40then Its Very Hot*/

  int temperature = 42;
  var result = temperature < 0
      ? "$temperature C The freezing temperature"
      : temperature > 0 && temperature <= 10
          ? "$temperature C Very cold weather "
          : temperature > 10 && temperature <= 20
              ? "$temperature C Cold weather "
              : temperature > 20 && temperature <= 30
                  ? "$temperature C  Normal temp "
                  : temperature > 30 && temperature <= 40
                      ? "$temperature:C Its Hot"
                      : "$temperature C Its very Hot";
  print(result);

  print(
      "----------------------------------------------------------------------");
//Q.6: Write a program to check whether an alphabet is a vowel or consonant.
  stdout.writeln("Enter any alphabet: ");
  var checkVowel = stdin.readLineSync();
  if (checkVowel == "a" ||
      checkVowel == "e" ||
      checkVowel == "i" ||
      checkVowel == "o" ||
      checkVowel == "u") {
    print("$checkVowel  is a vowel");
  } else {
    print("$checkVowel  is a consonant");
  }

  print(
      "----------------------------------------------------------------------");

/*Q.7: Write a program to calculate and print the Electricity bill of a given customer. Create variable for customer id, name, unit consumed by the user. bill amount and print the total amount the  customer needs to pay. The charge are as follow:
Unit Charge/unit
upto 199 @1.20
200 and above but less than 400 @1.50
400 and above but less than 600 @1.80
600 and above @2.00
Test Data:
id: 1001
name: James
units: 800
Expected Output:
Customer IDNO 1001
Customer Name :James
unit Consumed 800
Amount Charges @Rs. 2.00 per unit: 1600.00
Net Bill Amount: 1600.00 */
  String custname = "Usama Irfan";
  String custId = "1-12";
  int unitConsumed = 800;
  double amountChargedPerunit;

  var res = unitConsumed < 199
      ? amountChargedPerunit = 1.20
      : unitConsumed >= 200 && unitConsumed < 400
          ? amountChargedPerunit = 1.50
          : unitConsumed >= 400 && unitConsumed < 600
              ? amountChargedPerunit = 1.80
              : amountChargedPerunit = 2.00;
  double netBillAmount = unitConsumed * amountChargedPerunit;
  print(
      "CustomerName=$custname \n CustomerId $custId \n Unit: $unitConsumed  \n Amount Charges @ $amountChargedPerunit per unit $netBillAmount \n Net Bill Amount: $netBillAmount");

  print(
      "----------------------------------------------------------------------");

/* Q8: Create a marksheet using operators of at least 5 subjects and output should have Student Name, Student Roll Number, Class, Percentage, Grade Obtained etc.
i.e: Percentage should be rounded upto 2 decimal places only. */
  ;

  String studname = "Usama Irfan";
  String studRN = "EB2020";
  String standard = "XIV";
  int maths = 75;
  int english = 68;
  int urdu = 98;
  int physics = 79;
  int chem = 69;
  int obtainedMarks = maths + english + urdu + physics + chem;
  int totalMarks = 500;
  double percent =
      double.parse(((obtainedMarks / totalMarks) * 100).toStringAsFixed(2));
  var reSult = percent >= 80
      ? " A+"
      : percent >= 70 && percent < 80
          ? " A"
          : percent >= 60 && percent < 70
              ? " B"
              : percent >= 50 && percent < 60
                  ? " C"
                  : percent >= 50 && percent < 60
                      ? " D"
                      : percent >= 30 && percent < 40
                          ? " E"
                          : "failed";

//printing of marksheet
  print(
      "Marksheet \n ****************************************** \n Name: $studname \n RollNumber: $studRN \n Class: $standard \n Mathematics Marks: $maths \n English Marks: $english \n Urdu Marks: $urdu \n Physics Marks: $physics \n Chemistry Marks: $chem \n Obtained Marks: $obtainedMarks Out of $totalMarks \n per :$percent %  \n Grade: $reSult");

  print(
      "----------------------------------------------------------------------");

/*Q9: Check if the number is even or odd, If number is even then check if this is divisible by 5 or not & if number is odd then check if this is divisible by 7 or not. */
  int numb = 60;
  var crossCheck = numb % 2 == 0 && numb % 5 == 0
      ? "$numb  is an even and also divisible by 5"
      : "$numb is an Odd number";
  print(crossCheck);

  print(
      "----------------------------------------------------------------------");

/*Q10: Write a program that takes three numbers from the user and prints the greatest number & lowest number. */

  int firstNo = 65;
  int secondNo = 24;
  int thirdNo = 15;
  var comparisionfirst = firstNo > secondNo && firstNo > thirdNo
      ? "$firstNo"
      : secondNo > firstNo && secondNo > thirdNo
          ? "$secondNo"
          : thirdNo > firstNo && thirdNo > secondNo
              ? "$thirdNo"
              : null;
  var comparisionsecond = firstNo < secondNo && firstNo < thirdNo
      ? "$firstNo"
      : secondNo < firstNo && secondNo < thirdNo
          ? "$secondNo"
          : thirdNo < firstNo && thirdNo < secondNo
              ? "$thirdNo"
              : null;
  print("firstNo = $firstNo , secondNo= $secondNo , thirdNo= $thirdNo");
  print(
      "$comparisionfirst is a greatest number \n$comparisionsecond is a smallest number");

  print(
      "----------------------------------------------------------------------");

//Q11: Write a program to calculate root of any number.

  int base = 144;
  double exponent = 1 / 2;
  num Root = pow(base, exponent);
  print("The square root of $base: $Root");

  print(
      "----------------------------------------------------------------------");
/*Q12: Write a program to convert Celsius to fahrenheit
i.e: Temperature in degrees Fahrenheit (°F) = (Temperature in degrees Celsius (°C) 9/5) + 32*/

  double celsiusTemperature = 22.6;
  double fahTemperature = (9 / 5 * (celsiusTemperature) + 32);
  print("$celsiusTemperature C = $fahTemperature F");
  print(
      "----------------------------------------------------------------------");
}
