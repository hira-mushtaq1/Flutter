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
  int sum = numbs.reduce((a, b) => a + b);
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

  Map<String, String> contactDetails = {
    "Hira": "12234283739",
    "Usama": "123456778",
    "Abuzar": "1234354804",
    "Maimoona": "1234567879",
    "Heer": "1234545"
  };

  List<String> keysWithLengthFour =
      contactDetails.keys.where((key) => key.length == 4).toList();

  print(keysWithLengthFour);

  //Q8(b) remove all the false values from below list by using removeWhere or retainWhere property.

  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', "eligible": false},
    {'name': 'Mike', "eligible": true},
    {'name': 'Sarah', "eligible": true},
    {'name': 'Tom', "eligible": false},
  ];

  usersEligibility.removeWhere((e) => e['eligible'] == false);
  usersEligibility.retainWhere((value) => value['eligible'] == true);
  print(usersEligibility);

  //Q.9: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency.
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

  if (expenses.containsKey('fri')) {
    expenses['fri'] = 5000.0;
  } else {
    expenses.putIfAbsent('fri', () => 5000.0);
  }

  print(expenses);

//Q.11: remove all false values from Q4 list by using removeWhere or retainWhere property.

  evenOddList.removeWhere((value) => value == false);
  evenOddList.retainWhere((value) => value == true);
  print(evenOddList);

// Q Give a list of integers, write a dart code that returns the max value from the list;

  List<int> integers = [5, 3, 8, 2, 10, 1];
  int max = integers.reduce((a, b) => a > b ? a : b);

  print('The maximum value is: $max');

//Q Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.

  List<String> removeDuplicates(List<String> inputList) {
    return [
      ...{...inputList}
    ];
  }

  List<String> originalList = [
    'monday',
    'tuesday',
    'monday',
    'tuesday',
    'wednesday',
    'thursday',
    'friday'
  ];
  List<String> newList = removeDuplicates(originalList);
  print('Original List: $originalList');
  print('New List: $newList');

//Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original list.


  List<dynamic> originalLis = ['apple', 'mango', 'banana', 'grapes'];
  int n = 2;
  print('Original List: $originalLis');
  print('Number of elements to print: $n');
   List newLis = originalLis.take(n).toList();
    print(newLis);
 

//Q : Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain unchanged.

  List<String> Usernames = ['Hira', "Abuzar", "Usama", "zaigham"];
  print('User Names: $Usernames');
  List<String> reversedString = List.of(Usernames.reversed);
  print('Reversed String is: $reversedString');

//Q Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list. The order of elements in the new list should be the same as in the original list.

  List<int> getUniqueElements(List<int> inputList) {
    List<int> uniqueList = [];
    inputList.forEach((element) {
      if (!uniqueList.contains(element)) {
        uniqueList.add(element);
      }
    });
    return uniqueList;
  }

  List<int> original = [1, 2, 3, 2, 4, 1, 5, 4];
  List<int> newL = getUniqueElements(original);

  print('Original List: $original');
  print('New List: $newL'); // can be use same code as remove duplicate

  //Q Write a Dart code that takes in a list of integers and prints a new list with the elements sorted in ascending order. The original list should remain unchanged.

// List<int> unSortedList=[3,2,6,7,0,8,5,1];
// print('Unsorted list: $unSortedList');
// List<int> sortedList=List.of(unSortedList.sort());
// print("Sorted List: $sortedList");


//Q Create a map named "person" with the following key-value pairs: "name" as "John", "age" as 25, "isStudent" as true. Write a Dart code to check if the person is both a student and over 18 years old. Print "Eligible" if both conditions are true, otherwise print "Not eligible".


Map<String, dynamic> person = {'name': "John", 'age': 25, "isStudent": true};

  String name = person['name'];

  if (person['isStudent'] && person['age'] > 18) {
    print('$name is eligible');
  } else {
    print('$name is NotEligible');
  }

//Given a map representing a product with keys "name", "price", and "quantity", write Dart code to check if the product is in stock. If the quantity is greater than 0, print "In stock", otherwise print "Out of stock".

Map<String, Map<String, dynamic>> product={
  'stock':{
  'sneakers':{
    'name':'women sneakers',
    'price':'2345',
    'quantity':4,

  },
  'cluches':{
    'name':'women cluches',
    'price':'2000',
    'quantity':0,

  },
  'watches':{
    'name':'women watches',
    'price':'1000',
    'quantity':5,

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

//Q20. Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true. Write Dart code to check if the car is a sedan and red in color. Print "Match" if both conditions are true, otherwise print "No match".

Map <String, dynamic> car={
  'brand':'Toyota',
  'color':'Red',
  'isSedan':true,
};
if(car['isSedan'] && car['color']=='Red'){
  print("Match");
}else{
  print('Not Match');
}

// Q21 : Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user is an active admin. If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin

Map <String, dynamic> user={
  'name':'Hira',
  'isAdmin':true,
  'isActive':true,
};
if(user['isAdmin'] && user['isActive']){
  print('Active Admin');

}else{
  print('Not an active admin');
}

//Q22. Given a map representing a shopping cart with keys as product names and values as quantities, write Dart code to check if a product named "Apple" exists in the cart. Print "Product found" if it exists, otherwise print "Product not found".

Map <String, dynamic> shoppingCart={

  "T-shirts":10,
  "Noodles":4,
  "shoes":2,
  'waterBottles':4,
  "tablets":2,
  'oranges':12,
  // 'apple':12,

};

if(shoppingCart.containsKey('apple')){
  print('Product Found');
}
else{
  print('Produc Not Found');
}


}
