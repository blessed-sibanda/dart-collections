void basicListOperations() {
  // creating a list
  var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  List<String> snacks = [];
  var snacks2 = <String>[];

  // printing lists
  print(desserts);
  print(snacks);
  print(snacks2);

  // accessing list elements
  final secondElement = desserts[1];
  print(secondElement);

  final index = desserts.indexOf('pie');
  final value = desserts[index];
  print(value);

  // assigning values to list elements
  desserts[1] = 'cake';
  print(desserts);

  // adding elements to lists
  desserts.add('brownies');
  print(desserts);

  desserts.remove('cake');
  print(desserts);

  // Mutable and immutable lists
  final ages = [15, 38, 23];
  // ages = []; not allowed
  ages.remove(38);
  ages.remove(23);
  ages.add(100);
  print(ages);
}

void deeplyImmutableLists() {
  const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts.add('brownie'); not allowed
  // desserts.remove('pie'); not allowed
  // desserts[0] = 'fudge'; not allowed
  print(desserts);

  final desserts2 = const ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts2.add('brownie'); not allowed
  print(desserts2);

  final modifiableList = [DateTime.now(), DateTime.now()];
  final unmodifiableList = List.unmodifiable(modifiableList);
  print(unmodifiableList);
}

void listProperties() {
  const drinks = ['water', 'milk', 'juice', 'soda'];
  print(drinks.first);
  print(drinks.last);
  print(drinks.isEmpty);
  print(drinks.isNotEmpty);

  for (var drink in drinks) {
    print(drink);
  }
  drinks.forEach((element) => print(element));

  // Since the input of print is the same as the output of the
  // forEach function, Dart allows you to rephrase that like so:
  drinks.forEach(print);

  const pastries = ['cookies', 'croissants'];
  const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
  const desserts = ['donuts', ...pastries, ...candy];
  print(desserts);

  List<String>? coffees;
  final hotDrinks = ['milk tea', ...?coffees];
  print(hotDrinks);

  // collection if
  const peanutAllergy = true;
  const candies = ['Junior Mints', 'Twizzlers', if (!peanutAllergy) 'Reeses'];
  print(candies);

  // collection for
  const deserts = ['gobi', 'sahara', 'arctic'];
  var bigDeserts = [
    'ARABIAN',
    for (var desert in deserts) desert.toUpperCase()
  ];
  print(bigDeserts);
}

void listsExercises() {
  List<String> months = [];
  months.add('January');
  months.add('February');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('August');
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');
  print(months);
  final unmodifiableMonths = List.unmodifiable(months);
  print(unmodifiableMonths);
}

void lists() {
  basicListOperations();
  deeplyImmutableLists();
  listProperties();
  listsExercises();
}
