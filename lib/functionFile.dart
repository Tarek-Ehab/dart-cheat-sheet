void printMyName() {
  print("------Tarek------");
}

int sumTwoNumbers(int x, int y) {
  int z = x + y;
  return z;
}

// Optional parameters example
double finalPriece(double price, [double discount = 0, String x = "USD"]) {
// double discount = 0 => Optional parameters with default 0
// String x = "USD" => i can add more than Optional parameter
  double finalPrice = price - (price * (discount / 100));
  return finalPrice;
}

// Named parameters example
void greet(double x,
    {required String name, required int age, String country = "Egypt"}) {
  // x is normal parameter
  // name, age is required
  // country is optional with default = Egypt
  print("Hello, $name! You are $age years old from $country.");
}