import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../common/num_extension.dart';
import '../domain/number_fact.dart';
import '../domain/numbers_api_repository.dart';

@injectable
class NumberFactViewModel extends ChangeNotifier {
  NumberFactViewModel(this._repository);

  bool get isLoading => _isLoading;

  String get factText => _numberFact.text;
  String get factTitle {
    final number = _numberFact.number;
    if (number == null) return '';
    //just to nice view
    final numValue =
        number.isInt && number.abs() < 10000000 ? number.toInt() : number;
    return 'An interesting fact about $numValue';
  }

  Future<void> loadTodayFact() async {
    final today = DateTime.now();
    await loadFact(number: '${today.month}/${today.day}', type: FactType.date);
  }

  Future<void> loadFact({
    String? number,
    FactType type = FactType.trivia,
  }) async {
    _isLoading = true;
    notifyListeners();

    _numberFact = await _repository.getNumberFact(number, type);

    _isLoading = false;
    notifyListeners();
  }

  final NumberApiRepository _repository;
  bool _isLoading = true;
  NumberFact _numberFact = const NumberFact();
}
