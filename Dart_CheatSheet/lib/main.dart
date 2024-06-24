void main() {
  // *--------------------Primitive data types--------------------*
  //String
  String name = "Tarek";
  print("my name is $name");
  print('Tarek\'s fav hobby is programming');
  print('Tarek\t \ns fav hobby is programming');
  print(r'Tarek\t \ns fav hobby $is programming'); //raw string

  //Numbers
  int age = 15;
  double gpa = 2.7;
  num rating = 4.5; //Can hold numbers (int and double) without errors

  //Boolean
  bool isOnline = false;

  //Dynamic Variables
  //dynamic: Can hold any type of value and allows type changes during runtime
  dynamic dyNumOrString = 15.5;
  dyNumOrString = 4;
  dyNumOrString = "Hello";
  //var: Can hold any type of value and remains type during runtime
  // It's int now and can not be change to any other variable type
  var varNumOrString = 10;
  var varDyTest; // It's dynamic now because it is not initialized

  //Arithmetic
  40 + 2; // 42
  44 - 2; // 42
  21 * 2; // 42
  84 / 2; // 42
  84.5 ~/ 2.0; // int value 42
  392 % 50; // 42
  //Equality and Inequality
  42 == 43; // false
  42 != 43; // true
  //Comparison
  42 < 43; // true
  42 > 43; // false
  42 <= 43; // true
  42 >= 43; // false
  //Compound assignment
  double answer = 1.0;
  answer += 1; // 43
  answer -= 1; // 42
  answer *= 2; // 84
  answer /= 2; // 42
  //Logicall
  (41 < answer) && (answer < 43); // true
  (41 < answer) || (answer > 43); // true
  !(41 < answer); // false

  // https://api.dart.dev/stable/3.4.4/dart-core/dart-core-library.html -> Classes properties in Dart like .length for string or .bitLength for int

  // *--------------------Collecting data types--------------------*
  var emptyList = List<int>.empty(); //[]
  // Fixed-size list
  var pastries = List<String>.filled(3, '0'); //[0,0,0]
  // Element access by index
  pastries[0] = 'cookies';
  pastries[1] = 'cupcakes';
  pastries[2] = 'donuts';
  // Growable list
  List<String> desserts = [];
  desserts.add('cookies');
  // Initialize by grovable list
  var newDesserts = ['cookies', 'cupcakes', 'pie'];
  // List properties and methods|
  newDesserts.length; // 3
  newDesserts.first; // 'cookies'
  newDesserts.last; // 'pie'
  newDesserts.isEmpty; // false
  newDesserts.isNotEmpty; // true
  //desserts.firstWhere((str) => str.length < 4); // pie
  // Collection if
  var peanutAllergy = true;
  var candy = ['junior mints', 'twizzlers', if (!peanutAllergy) 'reeses'];
  // Collection for
  var numbers = [1, 2, 3];
  var doubledNumbers = [for (var number in numbers) 2 * number]; // [2, 4, 6]
  //-------------------------------------------------------------------------
  // "Set" like "List" but without elements duplication
  var emptySet = Set<int>(); //{}
  // Create set of int
  var someSet = <int>{};
  // Set type inference
  var anotherSet = {1, 2, 3, 13};
  // Check for element
  anotherSet.contains(1); // true
  anotherSet.contains(99); // false
  // Adding and removing elements
  someSet.add(42);
  someSet.add(2112);
  someSet.remove(2112);
  // Add to set from list
  someSet.addAll([1, 2, 3, 4]);
  // Intersection
  var intersection = someSet.intersection(anotherSet);
  // Union
  var union = someSet.union(anotherSet);
  // Convert the set to a list and print the element at index 1
  Set<String> fruits = {'apple', 'banana', 'orange'};
  print(fruits.elementAt(1)); // banana
  //-------------------------------------------------------------------------
  var emptyMap = Map<String, num>(); //{}
  Map<String, num> ages = {
    'ahmed': 15,
    'kareem': 16,
  };
  Map<int, int> numberOfSeats = {
    5: 150,
    15: 50,
    4: 25,
  };
  numberOfSeats[8] = 20; //{5:150, 15:50, 4:25, 8:20}

}
