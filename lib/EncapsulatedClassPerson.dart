class Person {
  //Private attribute: can't be access or see outside this file
  double _height = 175;

  //Setter
  set height(double height) {
    if (height > 0 && height <= 250) {
      _height = height;
    }
  }

  void setHeight(double height) {
    if (height > 0 && height <= 250) {
      _height = height;
    }
  }

  //Getter
  double get height => _height;

  double getHeightWithArrowFunc() => _height; //if i have only one statement

  double getHeight() {
    return _height;
  }
}
