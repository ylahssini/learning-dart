class Complex {
  num _real; // the _ represent that property of class is private
  num _imaginary;

  Complex(this._real, this._imaginary); // this is constructor of class
  Complex.real(num real) : this(real, 0);
  Complex.imaginary(num imaginary) : this(0, imaginary);

  get real => _real; // this is new syntax of get function to get value of private property
  set real(num value) => _real = value; // this is new syntax of set function to set value of private property

  get imaginary => _imaginary;
  set imaginary(num value) => _imaginary = value;

  @override
  String toString() {
    // this custom method is overriding the default method
    if (_imaginary >= 0) {
      return '${_real} + ${_imaginary}i';
    }

    return '${_real} - ${_imaginary.abs()}i';
  }

  @override
  bool operator ==(other) {
    if (!(other is Complex)) {
      return false;
    }

    return _real == other.real && _imaginary == other.imaginary;
  }
}

void main() {
  var major = Complex(5, 2);
  var alter = Complex(5, -2);
  var incomplete = Complex(8, 0)..imaginary = 9;
  var real = Complex.real(15);

  print(major);
  print(alter);
  print(major == alter);
  print(incomplete);
  print(real);
}
