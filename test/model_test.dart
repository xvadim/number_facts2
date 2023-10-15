import 'package:flutter_test/flutter_test.dart';
import 'package:number_facts/domain/number_fact.dart';

void main() {
  test('NumberFact model test', () {
    const fact = NumberFact(number: 42, isFound: true);
    expect(fact.title, 'An interesting fact about 42');
  });
}
