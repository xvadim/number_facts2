import 'package:injectable/injectable.dart';

import '../core/api/numbers_api_client.dart';
import '../domain/number_fact.dart';
import '../domain/numbers_api_repository.dart';
import 'dto/number_fact_dto.dart';

@Injectable(as: NumberApiRepository)
class NumberApiRepositoryImpl implements NumberApiRepository {
  NumberApiRepositoryImpl(this._numbersApiClient);

  final NumbersApiClient _numbersApiClient;

  @override
  Future<NumberFact> getNumberFact(String? number, FactType type) async {
    //it's better to process API exceptions here and
    //return Either type (fpdart), see also TaskEither (fpdart)
    final fact = await _numbersApiClient.getNumberFact(number, type.name);
    return fact.toNumberFact();
  }
}
