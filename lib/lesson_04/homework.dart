void main() {
  primitives();
  collections();
  varFinalConst();
  record();
  nullable();
}

/// Створи змінні та виведи їх:

/// Завдання 1: Примітивні типи
/// - age (int) — твій вік
/// - height (double) — твій зріст у метрах
/// - name (String) — твоє ім'я
/// - isStudent (bool) — чи ти студент
void primitives() {
  final age = 50;
  final height = 1.88;
  final name = 'Роман';
  final isStudent = true;

  print(
    'Мене звати $name, мені $age рік, '
    'мій зріст $height метрів, '
    'я ${isStudent ? 'студент' : 'не студент'} Robot Dreams',
  );
}

/// Завдання 2: Колекції
/// 1. List — 3 твої улюблені кольори
/// 2. Set — 3 унікальні оцінки, спробуй створити перевір print-ми, що вони не виводяться
/// 3. Map — 3 предмети та їх оцінки
void collections() {
  final likesColors = ['Ocean', 'Indigo', 'Azure'];
  final uniqueGrades = {3, 4, 5};
  final themes = {'Історія': 4, 'Фізика': 5, 'Математика': 3};

  print('Мої улюблені кольори: $likesColors');
  print('Унікальні оцінки: $uniqueGrades');
  print('Оцінки за предмети: $themes');
}


/// Завдання 3: var, final, const
/// 1. Створи змінну через var — наприклад, місто проживання та зміни її декілька разів (print після кожної зміни)
/// 2. Створи змінну через final — наприклад, країна
/// 3. Створи змінну через const — наприклад, кількість днів у тижні
void varFinalConst() {
  var city = 'Київ';
  print('Місто проживання: $city');
  city = 'Львів';
  print('Місто проживання: $city');
  city = 'Одеса';
  print('Місто проживання: $city');

  final country = 'Україна';
  print('Країна: $country');

  const daysInWeek = 7;
  print('Кількість днів у тижні: $daysInWeek');
}

/// Завдання 4: Record
/// Створи іменований та не іменований (позиційний) record з твоїм ім'ям та віком і виведи обидва поля.
void record() {}

/// Завдання 5: Nullable (опціонально)
/// Створи змінну String? nickname — може бути null або ім'я.
/// Виведи її через ??: якщо null — виведи "Немає", інакше — значення.
void nullable() {}
