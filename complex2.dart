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

  Complex operator + (Complex other) {
    return Complex(
      _real + other.real,
      _imaginary + other.imaginary,
    );
  }

  Complex multiply(Complex other) {
    num first = _real * other.real;
    num inner = _imaginary * other.real;
    num outer = _real * other.imaginary;
    num last = -(_imaginary * other.imaginary);

    return Complex(first + last, inner + outer);
  }
}

class Quanternion extends Complex {
  num _j;

  Quanternion(_real, _imaginary, this._j) : super(_real, _imaginary);

  @override
  String toString() {
    if (_j >= 0 && _imaginary < 0) {
      return '${_real} - ${imaginary.abs()}i + ${_j}j';
    }

    if (_j < 0 && _imaginary >= 0) {
      return '${_real} + ${imaginary}i - ${_j.abs()}j';
    }

    if (_j < 0 && _imaginary < 0) {
      return '${_real} - ${imaginary.abs()}i - ${_j.abs()}j';
    }

    return '${_real} + ${imaginary}i + ${_j}j';
  }
}

void main() {
  var major = Complex(5, 2);
  var alter = Complex(5, -2);

  var quantom = Quanternion(3, -2, -8);
  
  print(major + alter);
  print('(${major}) * (${alter}): ${major.multiply(alter)}');
  print(quantom);
}
