 import 'dart:math';

void main(){

//Q.1: Create a list of names and print all names using list.

  List<String> names = ["Hira", "Heer", "Kubra", "Hamna", "Usama"];
  print(names);

print("_________________________________________________");

//Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.


  List<String> daysName = [];
  daysName.add("Monday");
  daysName.add("Tuesday");
  daysName.add("Wednesday");
  daysName.add("Thursday");
  daysName.add("Friday");
  daysName.add("Saturday");
  daysName.add("Sunday");
  print(daysName);

  print("___________________________________________________");

  //Q.3: Create a list of Days and remove one by one from the end of list.

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

print("____________________________________________________");


//  Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

List <int> minMax=[1,3,4,67,8,9,5,0];
int min= minMax.reduce((a,b) => a < b ? a: b );
int max=minMax.reduce((a, b) =>a>b? a:b);
print(" Original List: $minMax \n value is: $min \n Largest value is: $max");

print("____________________________________________________");


// Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
Map <String, dynamic> contactDetails={
   "Hira": "12234283739",
    "Usama": "123456778",
    "Abuzar": "1234354804",
    "Maimoona": "1234567879",
    "Heer": "1234545"
};
List<String> keysWithLengthFour=  contactDetails.keys.where((key) => key.length == 4).toList();
print("Key with Four Length are: $keysWithLengthFour");

print("____________________________________________________");


//Q.6: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency.

  Map<String, Map<String, dynamic>> world = {
    'countries': {
      'Pakistan': {
        'capitalCity': 'Islamabad',
        'currency': 'PKR',
        'language': 'Urdu',
      },
      'India': {
        'capitalCity': 'New Delhi',
        'currency': 'Indian Rupee',
        'language': 'Hindi',
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

print("____________________________________________________");

/*Q.7:Map<String, double> expenses = {
 'sun': 3000.0,   'mon': 3000.0,
   'tue': 3234.0,
};

 Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.*/


  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  if (expenses.containsKey('fri')) {
    expenses['fri'] = 5000.0;
  } else {
    expenses.putIfAbsent('fri', () => 5000.0);
  }

  print(expenses);

print("____________________________________________________");

/*Q.8: remove all false values from below list by using removeWhere or retainWhere property.

List<Map<String, bool>> usersEligibility = [
{'name': 'John', 'eligible': true},
{'name': 'Alice', 'eligible': false},
{'name': 'Mike', 'eligible': true},
{'name': 'Sarah', 'eligible': true},
{'name': 'Tom', 'eligible': false},
]; */

  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', "eligible": false},
    {'name': 'Mike', "eligible": true},
    {'name': 'Sarah', "eligible": true},
    {'name': 'Tom', "eligible": false},
  ];

  usersEligibility.removeWhere((key) => key['eligible'] == false);
  usersEligibility.retainWhere((key) => key['eligible'] == true);
  print(usersEligibility);

  print("____________________________________________________");

//Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.



  List<int> integers = [5, 3, 8, 2, 10, 1];
  int maxVal = integers.reduce((a, b) => a > b ? a : b);

  print('The maximum value is: $maxVal');

  print("____________________________________________________");


// Q.10: Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.



  List<String> originalList = [
    'monday',
    'tuesday',
    'monday',
    'tuesday',
    'wednesday',
    'thursday',
    'friday'
  ];
  List<String> newList = originalList.toSet().toList();
  print("Original List: $originalList");
  print('New List without Duplicates: $newList');

  print("_____________________________________________________");


//Q 11: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original list.


  List<dynamic> originalLis = ['apple', 'mango', 'banana', 'grapes'];
  int n = 2;
  print('Original List: $originalLis');
  print('Number of elements to print: $n');
  List newLis = originalLis.take(n).toList();
  print("New list containing $n elements: $newLis");

print("_____________________________________________________");


  //Q.12: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain unchanged.
  List<String> Usernames = ['Hira', "Abuzar", "Usama", "zaigham"];
  print('User Names: $Usernames');
  List<String> reversedString = List.of(Usernames.reversed);
  print('Reversed String is: $reversedString');


print("_____________________________________________________");


  // Q.13: Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list. The order of elements in the new list should be the same as in the original list.

    List<int> uniqueListCheckin = [1, 32, 4, 1, 2, 3, 1, 4, 5, 6, 7, 65, 4, 4];
List<int> uniqueList = uniqueListCheckin.where((e) => uniqueListCheckin.lastIndexOf(e) == uniqueListCheckin.indexOf(e)).toList();
print("Original List: $uniqueListCheckin")

print("Unique Keys: $uniqueList");


print("_____________________________________________________");
    


//Q.14: Write a Dart code that takes in a list of integers and prints a new list with the elements sorted in ascending order. The original list should remain unchanged.

List<int> unSortedList=[3,2,6,7,0,8,5,1];
print('Unsorted list: $unSortedList');
List<int> sortedList=List<int>.from(unSortedList);
sortedList.sort();
print("Sorted List: $sortedList");

print("_____________________________________________________");


// Q.15: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the positive numbers.

List <int> filterOutNegativeNumbers=[-1,-2,-3,-4,-5,0,1,2,3,4,5];
List<int> positiveNumbers=filterOutNegativeNumbers.where((element) => element>0).toList();
print("Original List: $filterOutNegativeNumbers");
print("Positive Numbers after filtering out negative numbers list is: $positiveNumbers");

print("_____________________________________________________");



// Q.16: Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the even numbers.

List<int> evenOddList=[2,3,4,5,6,7,8,9,10];
List<int>evenList=List.from (evenOddList.where((element) => element%2==0));
print("Original List: $evenOddList");
print("Even Number List:$evenList");


print("_____________________________________________________");


// Q.17: Given a list of integers, write a Dart code that uses the map() method to create a new list with each value squared. The program should take in the original list as a parameter and print the new list.

List<int> num=[1,2,3,4,5,6,7,8,9];
List<int> squaredList= List.from(num.map((e) => pow(e, 2)));
print("Original List: $num");
print("Sqared List: $squaredList");


print("_____________________________________________________");


//Q.18: Create a map named "person" with the following key-value pairs: "name" as "John", "age" as 25, "isStudent" as true. Write a Dart code to check if the person is both a student and over 18 years old. Print "Eligible" if both conditions are true, otherwise print "Not eligible".

Map<String, dynamic> person = {'name': "John", 'age': 25, "isStudent": true};

  String name = person['name'];

  if (person['isStudent'] && person['age'] > 18) {
    print('$name is eligible');
  } else {
    print('$name is NotEligible');
  }

print("_____________________________________________________");





//Q19. Given a map representing a product with keys "name", "price", and "quantity", write Dart code to check if the product is in stock. If the quantity is greater than 0, print "In stock", otherwise print "Out of stock".

  Map<String, Map<String, dynamic>> product = {
    'stock': {
      'sneakers': {
        'name': 'women sneakers',
        'price': '2345',
        'quantity': 4,
      },
      'cluches': {
        'name': 'women cluches',
        'price': '2000',
        'quantity': 0,
      },
      'watches': {
        'name': 'women watches',
        'price': '1000',
        'quantity': 5,
      },
    }
  };
  String productKey = 'cluches';
  String? price = product['stock']?[productKey]?['price'].toString();
  String? quantity = product['stock']?[productKey]?['quantity'].toString();

  print('Product name: $productKey');
  print('Price: $price');
  print('Quantity available: $quantity');
  if (quantity != null && int.parse(quantity) > 0) {
    print('In stock');
  } else {
    print('Out of stock');
  }


print("_____________________________________________________");


//Q20. Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true. Write Dart code to check if the car is a sedan and red in color. Print "Match" if both conditions are true, otherwise print "No match".

  Map<String, dynamic> car = {
    'brand': 'Toyota',
    'color': 'Red',
    'isSedan': true,
  };
  if (car['isSedan'] && car['color'] == 'Red') {
    print("Match");
  } else {
    print('Not Match');
  }

print("____________________________________________________");


// Q21 : Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user is an active admin. If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin

  Map<String, dynamic> user = {
    'name': 'Hira',
    'isAdmin': true,
    'isActive': true,
  };
  if (user['isAdmin'] && user['isActive']) {
    print('Active Admin');
  } else {
    print('Not an active admin');
  }

print("_________________________________________________");


//Q22. Given a map representing a shopping cart with keys as product names and values as quantities, write Dart code to check if a product named "Apple" exists in the cart. Print "Product found" if it exists, otherwise print "Product not found".

  Map<String, dynamic> shoppingCart = {
    "T-shirts": 10,
    "Noodles": 4,
    "shoes": 2,
    'waterBottles': 4,
    "tablets": 2,
    'oranges': 12,
    // 'apple':12,
  };

  if (shoppingCart.containsKey('apple')) {
    print('Product Found');
  } else {
    print('Produc Not Found');
  }





print("_____________________________________________________");


 }




 