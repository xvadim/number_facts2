import 'package:injectable/injectable.dart';

import '../../core/api/numbers_api_client.dart';
import '../dto/number_fact_dto.dart';
import 'retrofit_client.dart';

@Environment('test')
@Singleton(as: NumbersApiClient)
class NumbersApiClientMockImpl implements NumbersApiClient {
  NumbersApiClientMockImpl(this._retrofitClient);

  @override
  Future<NumberFactDto> getNumberFact(String? number, String type) =>
      type == 'date'
          ? Future.value(
              (const NumberFactDto(
                text: 'today',
                isFound: true,
                type: 'date',
              )),
            )
          : Future.value(
              (const NumberFactDto(
                text: '42 answer',
                isFound: true,
                type: 'trivia',
              )),
            );

  final RetrofitClient _retrofitClient;
}
