
import 'dart:io';

void main() async {
  await task1();
  await task2();
  await task3();
  await task4();
  await task5();
}

Future<String> fetchName() async {
  return Future.delayed(Duration(seconds: 2), () => 'John Doe');
}

Future<int> fetchAge() async {
  return  Future.delayed(Duration(milliseconds: 1500), () => 11);
}

Future<void> task1() async {
  print('Task 1: Async name');
  final name = await fetchName();
  print('Мене звати: $name');
}

Future<void> task2() async {
  print('\nTask 2: Async age');
  final age = await fetchAge();

  var ageWords = '';
  if (age > 10 && age < 15) {
    ageWords = 'років';
  }
  else {     
    ageWords = switch (age % 10) {
      0 || 5 || 6 || 7 || 8 || 9 => 'років',
      1 => 'рік',
      2 || 3 || 4 => 'роки',
      _ => '',
    };
  }

  print('Мені $age $ageWords');
}

Future<void> task3() async {
  final stopwatch = Stopwatch();
  print('\nTask 3: Послідовне виконання Future');
  print('Async name');
  stopwatch.start();
  final name = await fetchName();
  stopwatch.stop();
  print('Мене звати: $name');
  print('Час виконання: ${stopwatch.elapsedMilliseconds} мс');
  stopwatch.reset();
  print('\nAsync age');
  stopwatch.start();
  final age = await fetchAge();
  stopwatch.stop();
  print('Мені $age років');
  print('Час виконання: ${stopwatch.elapsedMilliseconds} мс');
}

Future<void> task4() async {
  print('\nTask 4: Паралельне виконання Future');
  final stopwatch = Stopwatch();
  stopwatch.start();
  final (name, age) = await (fetchName(), fetchAge()).wait;
  stopwatch.stop();
  print('Мене звати: $name і мені $age років');
  print('Час виконання: ${stopwatch.elapsedMilliseconds} мс');
}

Future<String> delayedCountdown(int seconds) async {
  for (var i = seconds; i > 0; i--) {
    stdout.write('$i... ');
    await Future<void>.delayed(Duration(seconds: 1));
  }
  return 'Старт!';
}

Future<void> task5() async {
  print('\nTask 5: Затримка з Future');
  final result = await delayedCountdown(5);
  print('\n$result');
}
