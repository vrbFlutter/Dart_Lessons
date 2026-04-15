import 'dart:async';
import 'dart:io';

void main() async {
  await task6();
  await task7();
  await task8();
}

Future<void> readStreamByListen(Stream<int> stream) async {
  stream.listen(
    (number) {
      print('Отримано число: $number');
    },
    onDone: () {
      print('Стрім завершено\n');
    },
  );
}

Future<void> readStreamByAwaitFor(Stream<int> stream) async {
  await for (final number in stream) {
    print('Отримано число: $number');
  }
  print('Стрім завершено\n');
}

Future<void> readPeriodicStreamByAwaitFor(Stream<int> stream) async {
  await for (final number in stream) {
    stdout.write('$number...');
  }
  print('Стрім завершено\n');
}

Future<void> task6() async {
  print('\nTask 6: Створення стріму з Iterable та читання даних');
  final numbers = [1, 2, 3, 4, 5];
  final numberStream = Stream.fromIterable(numbers);

  await readStreamByAwaitFor(numberStream);
  await readStreamByListen(numberStream);
  await Future.delayed(Duration(seconds: 1), () => null);
}

Future<void> task7() async {
  print('\nTask 7: Створення стріму з periodic та читання даних');
  final periodicStream = Stream.periodic(
    Duration(seconds: 1),
    (count) => count + 1,
  ).take(10);
  await readPeriodicStreamByAwaitFor(periodicStream);
}

Future<void> task8() async {
  print('\nTask 8: Створення стріму з StreamController та читання даних');
  final controller = StreamController<String>();

  final subscription = controller.stream.listen(
    (message) {
      print('Отримано повідомлення: $message');
    },
    onDone: () {
      print('Стрім завершено\n');
    },
  );

  controller.add('Hello');
  await Future<void>.delayed(Duration(seconds: 1));
  controller.add('World');
  await Future<void>.delayed(Duration(seconds: 1));
  controller.add('Dart Streams');

  await controller.close();
  subscription.cancel();
}
