import "dart:io";
import "dart:math";

void main() {
  //Q.1: Create a list of names and print all names using list.

  List<String> names = ["Hira", "Heer", "Kubra", "Hamna", "Usama"];
  print(names);

  // List<String> days=[];
  // days.addAll(["Monday","Tuesday ","Wednesday ","Thursday ","Friday ","Saturday ","Sunday"]);
  // print (days);
  // Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.

  List<String> daysName = [];
  daysName.add("Monday");
  daysName.add("Tuesday");
  daysName.add("Wednesday");
  daysName.add("Thursday");
  daysName.add("Friday");
  daysName.add("Saturday");
  daysName.add("Sunday");
  print(daysName);

  // Q.3: Create a list of Days and remove one by one from the end of list.
  daysName.remove("Sunday");
  print(daysName);
  daysName.remove("Saturday");
  print(daysName);
  daysName.remove("Friday");
  print(daysName);
  daysName.remove("Thursday");
  print(daysName);
  daysName.remove("Wednesday");
  print(daysName);
  daysName.remove("Tuesday");
  print(daysName);
  daysName.remove("Monday");
  print(daysName);

  // List  numbs=[1,2,4,5,6,8,10];
  //List <int> checkNum=[];
  //if(numbs%2==0){
  //checkNum.add;}

// Q.4: Create a list of numbers and create one empty list, now check for every index number is EVEN or ODD. if number is even then add true into empty list and if number is odd then add false into empty list, both list needs to print at the end.

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<bool> evenOddList = [];

 numbers.forEach((numbers) {
    evenOddList.add(numbers.isEven);
  });

  print("Numbers: $numbers");
  print("Even/Odd List: $evenOddList");

 




//Q.5: Count number of even & number of odds from Q4 list using increment & decrement operators only.

  int evenCount = 0;
  int oddCount = 0;
  
 numbers.forEach((numbers) {
    if (numbers % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  });

  print("Numbers: $numbers");
  print("Even Count: $evenCount");
  print("Odd Count: $oddCount");

  //Q.6: Write a program to sum all the items in a list, then multiply all the items in a list with there index number.

   List<int> numbs = [1, 2, 3, 4, 5, 6];
int sum= numbs.reduce((a, b) => a+b);
  int prod = numbers.fold(
      1,
      (previousValue, element) =>
          previousValue * element * numbers.indexOf(element));

  print("Numbers: $numbs");
  print("Sum: $sum");
  print("Product: $prod");

   
  //Q.7: Create a list of numbers & write a program to get the smallest & greatest number from a list.

List<int> num = [5, 2, 8, 1, 9, 3];
  
  int smallest = num.reduce((a, b) => a < b ? a : b);
  int greatest = num.reduce((a, b) => a > b ? a : b);

  print("Numbers: $num");
  print("Smallest Number: $smallest");
  print("Greatest Number: $greatest");

 // Q.8: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.

 Map <String, String> contactDetails={"Hira":"12234283739", "Usama":"123456778", "Abuzar":"1234354804", "Maimoona":"1234567879", "Heer": "1234545"};

  List<String> keysWithLengthFour =
      contactDetails.keys.where((key) => key.length == 4).toList();

  print(keysWithLengthFour);





  //Q.9: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency.
Map<String, Map<String, dynamic>> world = {
    'countries': {
      'Pakistan':{
        'capitalCity':'Islamabad',
        'currency':'PKR',
        'language':'Urdu',

      },
      'India':{
        'capitalCity':'New Delhi',
        'currency':'Indian Rupee',
        'language':'Hindi',
      },
      'USA': {
        'capitalCity': 'Washington, D.C.',
        'currency': 'US Dollar',
        'language': 'English',
      },
      'France': {
        'capitalCity': 'Paris',
        'currency': 'Euro',
        'language': 'French',
      },
      'Japan': {
        'capitalCity': 'Tokyo',
        'currency': 'Japanese Yen',
        'language': 'Japanese',
      },
    },
  };


  String countryKey = 'Pakistan'; 

  String? capitalCity = world['countries']?[countryKey]?['capitalCity'];
  String? currency = world['countries']?[countryKey]?['currency'];

  if (capitalCity != null && currency != null) {
    print('Country: $countryKey');
    print('Capital City: $capitalCity');
    print('Currency: $currency');
  } else {
    print('Country information not found.');
  }


  
// Q.10:
// Map<String, double> expenses = {
//   'sun': 3000.0,
//   'mon': 3000.0,
//   'tue': 3234.0,
// };
//Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.


Map<String, double> expenses = {
  'sun': 3000.0,
  'mon': 3000.0,
  'tue': 3234.0,
  
};

if (expenses.containsKey('fri')){
    expenses['fri'] = 5000.0;

    }
else{
    
expenses.putIfAbsent('fri', () => 5000.0);
}

print(expenses);
  
  



//Q.11: remove all false values from Q4 list by using removeWhere or retainWhere property.


evenOddList.removeWhere((value) => value == false);
evenOddList.retainWhere((value) => value == true);
print(evenOddList);
}