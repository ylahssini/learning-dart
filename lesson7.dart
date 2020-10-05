import 'dart:math' as Math;

void main() {
  print('Start to generate 100 iterators');
  var numbers = Iterable.generate(100, (int i) => i);
  
  print('----------------------------------------------------------------------');
  print('we start to filter by even:');
  print(numbers.where((element) => element % 2 == 0).toList());

  print('----------------------------------------------------------------------');
  print('we take 5');
  print(numbers.where((element) => element % 2 == 0).take(5).toList());

  print('----------------------------------------------------------------------');
  print('we calculate all iterators');
  print(numbers.reduce((value, element) => value + element));

  print('----------------------------------------------------------------------');
  print('get the last number');
  print(numbers.last);

  print('----------------------------------------------------------------------');
  print('we skip 10');
  print(numbers.skipWhile((value) => value < 10).toList());

  print('----------------------------------------------------------------------');
  print('we take 10');
  print(numbers.takeWhile((value) => value < 10).toList());

  print('----------------------------------------------------------------------');
  print('i don\'t understand any');
  print(numbers.any((element) => element % 2.33 == 1));

  print('----------------------------------------------------------------------');
  print('Check every element are greater than 0');
  print(numbers.every((element) => element > 0));

  print('----------------------------------------------------------------------');
  var multiplied = numbers.map((element) => element * 2);
  print('Multiply by 2 for each iterator');
  print(multiplied.toList());

  print('----------------------------------------------------------------------');
  print('In list multiplied, get the max');
  print(multiplied.reduce(Math.max));


  print('----------------------------------------------------------------------');
  Map<int, int> mapNumbers = Map.fromIterable(numbers);
  print('Convert our table to map and add key to value which are numbers and same');
  print(mapNumbers.map((int key, int value) => MapEntry(key, key + value)));
}
