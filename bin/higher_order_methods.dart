void higherOrderMethods() {
  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((e) => e * e);
  print(squares);
  print(squares.toList());
  final evens = squares.where((element) => element.isEven);
  print(evens.toList());

  const amounts = [199, 299, 299, 199, 499];
  final total = amounts.reduce((value, element) => value + element);
  print(total);
  final total2 =
      amounts.fold(0, (int previousValue, element) => previousValue + element);
  print(total2);

  final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
  desserts.sort();
  print(desserts);

  var dessertsReversed = desserts.reversed;
  print(dessertsReversed);
  print(desserts);

  desserts.sort((d1, d2) => d1.length.compareTo(d2.length));
  print(desserts);

  final bigTallDesserts = desserts
      .where((dessert) => dessert.length > 5)
      .map((e) => e.toUpperCase());
  print(bigTallDesserts);

  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  final highestScore = scores.last;
  final lowestScore = scores.first;
  print(highestScore);
  print(lowestScore);
  final bGrades = scores.where((element) => element >= 80 && element <= 90);
  print(bGrades.toList());

  String myText = 'Once upon a time there was a Dart programmer who '
      'had a challenging challenge to solve. Though the challenge was great, '
      'a solution did come. The end.';
  print(uniqueCharacters(myText));
  print(characterFrequencyMap(myText));

  final users = [
    User(1, 'Blessed'),
    User(2, 'Chiedza'),
    User(3, 'Mikeila'),
  ];
  print(convertUserListToMaps(users));
}

Set<String> uniqueCharacters(String text) {
  return text.runes.map((codePoint) => String.fromCharCode(codePoint)).toSet();
}

Map<String, int> characterFrequencyMap(String text) {
  final characterFrequencyMap = <String, int>{};
  for (var codePoint in text.runes) {
    final character = String.fromCharCode(codePoint);
    final frequency = characterFrequencyMap[character] ?? 0;
    characterFrequencyMap[character] = frequency + 1;
  }
  return characterFrequencyMap;
}

class User {
  User(this.id, this.name);
  final int id;
  final String name;

  Map<int, String> toMap() {
    return {id: name};
  }
}

List<Map<int, String>> convertUserListToMaps(List<User> users) {
  return users.map((user) => user.toMap()).toList();
}
