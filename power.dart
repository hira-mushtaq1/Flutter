// import "dart:math";
// for the power opertation we need to import math library from dart

void main() {
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

  Map friends = {"name": "Hira", "age":23, "rollno":1, "class":"X"};
  print(friends.keys);
  print( friends.values);
  print(friends["name"]);

//<String, dynamice>means keys are only of String Type but values might be of different type,,,putifabsebt agr na ho tw add ho tw update nh ..//agr key update krni ho tw ifAbsent ki tw kia kryn
}
