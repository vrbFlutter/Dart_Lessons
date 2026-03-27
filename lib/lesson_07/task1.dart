import 'dart:math';

void main() {
  final list = List.generate(100, (index) => Random().nextInt(101));
  print('Згенерований список з 100 випадкових чисел від 0 до 100:');
  print(list);

  print('\n65-й елемент: [${list[64]}]');

  list.insert(49, 1_000_000_000);
  print('\n50-й елемент: [${list[49]}]');

  final removedElements = [24, 45, 66, 88];
  print('\nВидаляємо елементи: $removedElements');

  for (final element in removedElements) {
    list.removeWhere((item) => item == element);
  }
  print('Список після видалення:\n$list');

  var sum = 0;
  for (final element in list) {
    if (element % 3 == 0) {
      sum += element;
    }
  }
  print('\nСума елементів, кратних 3: $sum');

  final temp = [];
  for (final element in list) {
    if (element % 2 == 0) {
      temp.add(element);
    }
  }
  print('\nСписок парних чисел списку:\n$temp');

  print('\nДовжина списку парних чисел: ${temp.length}');
}
