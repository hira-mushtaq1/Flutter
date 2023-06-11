import "dart:io";
import "dart:math";

void main()
{
  //Q1. Createc two integers variables length and breadth and assign values then check if the values makes a square or a rectangle.


int length=2;
int width=5;

if(length==width){
  print("The given values makes a square");
}
else{
  print("The given values makes a rectangle ");
}

  print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"); // for specify ending of each code
//Q2. Take two variables and store age then using if/else condition to determine oldest and youngest among them

int Ahmed=25;
int Ali=30;
if(Ahmed > Ali){
  print("Ahmed is older than Ali ");
  
}
else{
   print("Ahmed is younger than Ali ");
  

}

  print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"); // for specify ending of each code
//Q3 A student will not be allowed to sit in exam if his/her attendance is less than 75%.Create integer variables and assign value: Number of classes held=16, number of classes attended=10, and print percentage of class attended, Is student is allowed to sit in exam or not?

int totalClasses=16;
int classAttended=10;
double percentage=double.parse(((classAttended/totalClasses)*100).toStringAsFixed(2));
if(percentage<75){
  print("You are not allowed to sit in exam because your attendance is: $percentage which is less than 75%");
}
else{
  print("Collect your Admit card from the admin block");
}
  print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"); // for specify ending of each code

//Q4 Create integer varriable assign any year to end it and check if a year is a leap year or not? If a year is divisible by 4 then it is a leap year but if the year is century year like 2000,1900,2100 then it must be divisble by 400. i.e, use % operator

int year=2001;
if(year%4==0){
  print("The year is the leap year");
}
else{
  print("Not a leap year");
}

  print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"); // for specify ending of each code

/* Q.5 Write a program to read temperature in centigrade and display a suitable message according to temperature:
You have num variable temperature = 42;
Now print the message according to temperature:
temp <0, then freezing temperature
temp 0-10 very cold weather
temp 10-20 cold weather
temp 20-30 normal temp
temp 30-40 its hot
temp >=40then Its Very Hot*/

int temperature=42;
var result= temperature<0? "$temperature C The freezing temperature" : temperature>0 && temperature <=10  ? "$temperature C Very cold weather " : temperature>10 && temperature <=20  ?"$temperature C Cold weather " : temperature>20 && temperature <=30 ? "$temperature C  Normal temp " : temperature>30 && temperature <=40  ? "$temperature:C Its Hot" : "$temperature C Its very Hot" ;
print(result);



  print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"); // for specify ending of each code
//Q.6: Write a program to check whether an alphabet is a vowel or consonant.
stdout.writeln("Enter any alphabet: ");
var checkVowel=stdin.readLineSync();
if(checkVowel=="a" || checkVowel=="e" || checkVowel=="i" || checkVowel=="o" || checkVowel=="u"){
  print("$checkVowel  is a vowel");
}
else{
  print("$checkVowel  is a consonant");
}

  print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"); // for specify ending of each code

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
String custname= "Hira Mushtaq";
String custId= "E-12";
int unitConsumed=800;
double amountChargedPerunit;

var res=unitConsumed<199 ? amountChargedPerunit=1.20 :unitConsumed>=200 && unitConsumed<400 ?  amountChargedPerunit=1.50 : unitConsumed>=400 && unitConsumed<600 ?  amountChargedPerunit=1.80 : amountChargedPerunit=2.00;
double netBillAmount=unitConsumed*amountChargedPerunit;
print("CustomerName=$custname \n CustomerId $custId \n Unit: $unitConsumed  \n Amount Charges @ $amountChargedPerunit per unit $netBillAmount \n Net Bill Amount: $netBillAmount" );



  print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"); // for specify ending of each code



/* Q8: Create a marksheet using operators of at least 5 subjects and output should have Student Name, Student Roll Number, Class, Percentage, Grade Obtained etc.
i.e: Percentage should be rounded upto 2 decimal places only. */
;


String stdname= "Hira Mustaq";
String stdRN="EB20103040";
String standard="XIV";
int maths= 85;
int english= 88;
int urdu=98;
int physics=99;
int chem=99;
int  obtainedMarks=maths+english+urdu+physics+chem;
int totalMarks=500;
double per=double.parse(((obtainedMarks/totalMarks)*100).toStringAsFixed(2));
var reS= per>=80 ? " A+" : per>=70 && per<80 ? " A" : per>=60 && per<70 ? " B" : per>=50 && per<60 ? " C" : per>=50 && per<60 ? " D" :  per>=30 && per<40 ? " E" : "You are failed";


//printing of marksheet
  print("Marksheet \n ****************************************** \n Name: $stdname \n RollNumber: $stdRN \n Class: $standard \n Mathematics Marks: $maths \n English Marks: $english \n Urdu Marks: $urdu \n Physics Marks: $physics \n Chemistry Marks: $chem \n Obtained Marks: $obtainedMarks Out of $totalMarks \n per :$per %  \n Grade: $reS");
  


 
 
  print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"); // for specify ending of each code


/*Q9: Check if the number is even or odd, If number is even then check if this is divisible by 5 or not & if number is odd then check if this is divisible by 7 or not. */
int  test=30;
var chck=test%2==0 && test%5==0? "$test  is an even and also divisible by 5" :"$test is an Odd number";
print(chck);


  print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"); // for specify ending of each code

/*Q10: Write a program that takes three numbers from the user and prints the greatest number & lowest number. */





int first=34;
int second=54;
int third=45;
var comparision1= first>second && first> third?"$first" :second>first && second >third ?"$second" : third>first && third>second ?"$third": null;
var comparision2= first<second && first<third ? "$first" : second<first && second <third ?"$second" : third<first && third<second ?"$third":null;
print("first number = $first , second number= $second , third number= $third");
print("$comparision1 is a greatest number \n$comparision2 is a smallest number");




  print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"); // for specify ending of each code




//Q11: Write a program to calculate root of any number.

int base= 36;
double exponent=1/2;
num squareRoot=pow(base, exponent);
print("The square root of $base: $squareRoot");

  print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"); // for specify ending of each code

/*Q12: Write a program to convert Celsius to fahrenheit
i.e: Temperature in degrees Fahrenheit (°F) = (Temperature in degrees Celsius (°C) 9/5) + 32*/

double celsiusTemp= 34.5;
double fahTemp=(9/5*(celsiusTemp)+32);
print("$celsiusTemp C = $fahTemp F");

  print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"); // for specify ending of each code

}








