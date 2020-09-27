class Person {
  String name;

  get() {
    return this.name;
  }

  set(name) {
    this.name = name;
  }
}

void main() {
  var me = new Person();

  me.set('Youssef');
  me.name = 'Joe';
  print(me.get());
}
