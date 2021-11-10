void sets() {
  setBasics();
}

void setBasics() {
  final Set<int> someSet = {};
  final someSet2 = <int>{};
  print(someSet2);
  final anotherSet = {1, 2, 3, 1};
  print(anotherSet);

  print(anotherSet.contains(1));
  print(anotherSet.contains(99));

  someSet.add(42);
  someSet.add(2112);
  someSet.add(42);
  print(someSet);
  someSet.remove(2112);
  print(someSet);

  someSet.addAll([1, 2, 3, 4]);
  print(someSet);

  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};
  final interesection = setA.intersection(setB);
  print(interesection);
  final union = setA.union(setB);
  print(union);
}
