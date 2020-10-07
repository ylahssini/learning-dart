import 'dart:io';

void main() {
  List<String> cymkColors = ['cyan', 'yellow', 'magenta', 'black'];

  try {
    print('Enter a CYMK color: ');
    var input = stdin.readLineSync();

    int index = cymkColors.indexOf(input.toLowerCase());

    print('You found it: ${cymkColors[index]}');
  } on FormatException {
    print('Could not parse the input');
  } on RangeError {
    print('Wrong answer');
  }
}