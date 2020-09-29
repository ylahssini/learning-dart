int add(int a, int b) => a + b;
int sub(int a, int b) => a - b;

choose(bool op) {
	if (op == true) {
		return add;
	} else {
		return sub;
	}
}

void main() {
	print('Salam world');
	
	String joomla = 'This is a Dart';
	print(joomla);

	List<String> fruits = ['Banana', 'Apple', 'Ananas'];
	print(fruits);

	var resultAdd = choose(true);
	print('Result of add: ${resultAdd(30, 20)}');

	var resultSub = choose(false);
	print('Result of sub: ${resultSub(30, 20)}');

  var obj = { 'a': 1 };
  print(obj['a']);
}