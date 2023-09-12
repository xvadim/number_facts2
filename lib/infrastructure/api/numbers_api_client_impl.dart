import 'package:injectable/injectable.dart';

import '../../core/api/numbers_api_client.dart';
import '../dto/number_fact_dto.dart';
import 'retrofit_client.dart';

@Singleton(as: NumbersApiClient)
class NumbersApiClientImpl implements NumbersApiClient {
  NumbersApiClientImpl(this._retrofitClient);

  @override
  Future<NumberFactDto> getNumberFact(String? number, String type) =>
      _retrofitClient.getNumberFact(number ?? 'random', type);

  final RetrofitClient _retrofitClient;
}
