class Animal {
  factory Animal(String specimen) {
    if (specimen == 'cat') {
      return Cat();
    } else if (specimen == 'dog') {
      return Dog();
    }

    return Animal._specimen('No specimen');
  }

  Animal._specimen(specimen);

  @override
  String toString() {
    return 'No specimen found 😝';
  }
}

class Cat extends Animal {
  Cat() : super._specimen('cat');

  @override String toString() {
    return 'Cat 🐱';
  }
}

class Dog extends Animal {
  Dog() : super._specimen('dog');

  @override String toString() {
    return 'Dog 🐶';
  }
}

void main() {
  var minouch = new Animal('cat');
  var bobby = new Animal('dog');
  var jiji = new Animal('bird');

  print(minouch);
  print(bobby);
  print(jiji);
}