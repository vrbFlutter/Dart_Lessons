
import 'package:dart_app/lesson_07/names_deepseek.dart';
import 'package:dart_app/lesson_07/names_gpt.dart';

void main() {
  final intersectionSet =
      ukrainianNamesDeepseek.intersection(ukrainianNamesGPT);
  print('Спільні імена:\n$intersectionSet');

  final uniqueToDeepseek = ukrainianNamesDeepseek.difference(ukrainianNamesGPT);
  print('\nІмена, які є тільки в Deepseek:\n$uniqueToDeepseek');

  final uniqueToGPT = ukrainianNamesGPT.difference(ukrainianNamesDeepseek);
  print('\nІмена, які є тільки в GPT:\n$uniqueToGPT');

}
