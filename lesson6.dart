class WhichDate {
  DateTime _now = DateTime.now();

  get now => _now;

  void showDate() {
    print(_now);
  }
}

class Man {
  void hi() {
    print('Hi man');
  }

  void showDate() {}
  }
  
  class Woman {
    void goodbye() {
      print('Bye bye');
    }
  }
  
  // To implement a mixin which is WhichDate, there are some requiments that we should respect
  // 1. The class must not have declared constructor
  // 2. The class should not be a subclass of anything execpt object, that means we don't extends keyword
  // 3. The class must have no calls to the super keyword
  class Child with WhichDate implements Man, Woman {
    @override
    void hi() {
      print('Hey');
    }
  
    @override
    void goodbye() {
      print('Goodbye bye');
    }
  }
  
  void main() {
    // We tell to child to do like man
    Man theo = Child();
  
    // Here it's working because we declare theo as Man class with Child class
    theo.hi();
    // theo.goodbye() will not working, we need to casting with Woman class to get work
    (theo as Woman).goodbye();
  
    // to access the method of our mixin class, we must casting to our class
    (theo as Child).showDate();
}
