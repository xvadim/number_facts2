import 'number_fact.dart';

enum FactType {
  trivia,
  math,
  date,
}

abstract class NumberApiRepository {
  Future<NumberFact> getNumberFact(String? number, FactType type);
}
