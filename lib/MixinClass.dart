// Define a mixin
mixin Runner {
  late int speed;

  void run() {
    print('Running at speed: $speed');
  }
}

// Define another mixin
mixin Flyer {
  late double altitude;

  void fly() {
    print('Flying at altitude: $altitude');
  }
}

// Define a base class Animal with a constructor
class Animal {
  String name;

  // Constructor for the Animal class
  Animal(this.name) {
    print('Animal created with name: $name');
  }

  void breathe() {
    print('Animal is breathing');
  }
}

// Define a class Bird that extends Animal and uses both Runner and Flyer mixins
class Bird extends Animal with Runner, Flyer {
  // Constructor for the Bird class
  Bird(String name, {required int speed, required double altitude})
      : super(name) {
    this.speed = speed;
    this.altitude = altitude;
  }

  void displayAttributes() {
    print('Name: $name, Speed: $speed, Altitude: $altitude');
  }
}

void main() {
  // Create an instance of Bird
  Bird bird = Bird('Parrot', speed: 10, altitude: 1000.5);

  // Call methods from Animal, Runner, and Flyer
  bird.breathe();           // Output: Animal is breathing
  bird.run();               // Output: Running at speed: 10
  bird.fly();               // Output: Flying at altitude: 1000.5

  // Display attributes
  bird.displayAttributes(); // Output: Name: Parrot, Speed: 10, Altitude: 1000.5
}
