import 'package:mocky/mocky.dart';

void main() {
  final randomNouns = List.generate(100, (index) => Mocky.word());
  print('Згенерований список з 100 випадкових слів:');
  print(randomNouns);

  final nounsMap = {for (final item in randomNouns) item: item.length};
  print('\nСловник, де ключі - слова, а значення - їх довжина:');
  print(nounsMap);

  final nounsMapFiltered = Map.fromEntries(
    nounsMap.entries.where((entry) => entry.value % 2 == 0)
  );
  print(
    '\nСловник, де ключі - слова,' 
    ' а значення - їх довжина (тільки для слів з парною довжиною):'
  );
  print(nounsMapFiltered); 
}

   
