void maps() {
  final Map<String, int> emptyMap = {};
  print(emptyMap);
  print(emptyMap.length);

  final digitToWord = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
  };
  print(digitToWord);

  final treasureMap = {
    'garbage': 'in the dumpster',
    'glasses': 'on your head',
    'gold': ['in the cave', 'under your mattress'],
  };
  print(treasureMap);

  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  print(inventory);
  final numberOfCakes = inventory['cakes'];
  print(numberOfCakes?.isEven);
  inventory['brownies'] = 3;
  inventory['cakes'] = 1;
  print(inventory);
  inventory.remove('cookies');
  print(inventory);
  print(inventory.isEmpty);
  print(inventory.isNotEmpty);
  print(inventory.length);

  print(inventory.keys);
  print(inventory.values);

  print(inventory.containsKey('pies'));
  print(inventory.containsKey(42));

  for (var item in inventory.keys) {
    print(inventory[item]);
  }
  inventory.forEach((key, value) => print('$key -> $value'));

  for (final entry in inventory.entries) {
    print('${entry.key} -> ${entry.value}');
  }

  final myInfo = {
    'name': 'Blessed Sibanda',
    'profession': 'Engineer',
    'country': 'Zimbabwe',
    'city': 'Gweru'
  };
  print(myInfo);
  myInfo['country'] = 'Canada';
  myInfo['city'] = 'Toronto';
  print(myInfo);

  myInfo.forEach((key, value) => print('$key --> $value'));
}
