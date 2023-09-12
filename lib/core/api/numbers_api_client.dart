import '../../infrastructure/dto/number_fact_dto.dart';

abstract class NumbersApiClient {
  Future<NumberFactDto> getNumberFact(String? number, String type);
}
