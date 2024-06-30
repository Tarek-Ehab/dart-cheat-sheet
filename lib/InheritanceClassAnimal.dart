// abstract class can't make a object from it if we want to make a object remove abstract to return to be normal class
abstract class Animal {
  int numberOfLimbs = 4;
  String Color;
  double weight;

  Animal(this.Color, this.weight);

  void eat(); //abstract class "Force developers to override on eat() method"

  void sleep() {
    print("sleeping");
  }
}

class Dog extends Animal {
  Dog(super.Color, super.weight); //Super constructors

  void bark() {
    print("barking");
  }

  @override
  void eat() {
    print("Dog is eating"); //override
  }
}

class Lion extends Animal {
  Lion(super.Color, super.weight); //Super constructors

  void roar() {
    print("roaring");
  }

  @override
  void eat() {
    print("Lion is eating"); //override
  }
}

class Cat extends Animal {
  String food;
  Cat(String Color, double weight, this.food)
      : super(Color, weight); //Super constructors

  void meow() {
    print("Meowing");
  }

  @override
  void eat() {
    print("Cat is eating"); //override
  }
}

class Circule {
  double redius;
  late double x;
  late double y; //like "!" in null safety
  Circule(this.redius, this.x, this.y);

  void draw() {
    print("redius = $redius and x =$x , y = $y");
  }

// "named constructor" like normal constructor but less parameters and special calling name
  Circule.origin(this.redius) {
    x = 0;
    y = 0;
  }
}
/* 
we can use "implements" instead of extends
but it will lead to force override
all attributes and methods
*/

/*   anonymous objects

Dog roy = Dog("Black", 50);
roy: Reference to the location of the object
Dog("Black", 50): the object

Dog("Black", 50);
it is right but we can't be acess it without reference

List <Animal> dogs =[Dog(),Dog()];
dogs[0].    ; //object
dogs[1].    ; //another object
*/