class Person {
  // Properties of the class (attributes)
  String name;
  int age;
  
  // Constructor for the class
  //Parameter Initializer List: Use when you want to assign constructor parameters without any logic
  Person(this.name, this.age);
  //Explicit Assignment: Use this when you need to perform additional logic
  /*Person(String name, int age) {
    this.name = name;
    this.age = age;
  }*/

  // Method to display person's details
  void display() {
    print('Name: $name');
    print('Age: $age');
  }

}
