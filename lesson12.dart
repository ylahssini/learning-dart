import 'dart:async';

Future getMessage() {
  return Future.delayed(Duration(seconds: 2), () => {
    print('Hello earth 👽')
  });
}

Future<String> getSignalEvent1() {
  return Future.value('Signal event 1');
}

Future<String> getSignalEvent2() {
  return Future.value('Signal event 2');
}

void main() async {
  print('get message');
  await getMessage();

  scheduleMicrotask(() => print('Micro task 🖖'));

  getSignalEvent1().then((m) => print(m));
  getSignalEvent2().then((m) => print(m));

  print('message received');
}