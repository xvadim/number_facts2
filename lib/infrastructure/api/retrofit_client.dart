import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../dto/number_fact_dto.dart';

part 'retrofit_client.g.dart';

@lazySingleton
@RestApi()
abstract class RetrofitClient {
  @factoryMethod
  factory RetrofitClient(Dio dio) = _RetrofitClient;

  @GET('/{number}/{type}')
  Future<NumberFactDto> getNumberFact(
    @Path() String number,
    @Path() String type,
  );
}
