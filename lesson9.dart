class AgeException implements Exception {
  String message;

  AgeException(this.message);

  @override
  String toString() {
    return message;
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Club {
  check(Person visitor) {
    if (visitor.age < 18) {
      throw AgeException('The bar will close because we found a child here');
    } else {
      print('You can enter ${visitor.name}');
    }
  }
}

void main() {
  try {
    Person visitorOne = new Person('John', 24);
    Person visitorTwo = new Person('steve', 17);
    Person visitorThree = new Person('Jamie', 35);

    Club nightBlue = new Club();
    nightBlue.check(visitorOne);
    nightBlue.check(visitorTwo);
    nightBlue.check(visitorThree);
  } catch (error) {
    print(error);
  }
}