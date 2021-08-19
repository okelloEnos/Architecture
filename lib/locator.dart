import 'package:architecture_training/services/Api/api.dart';
import 'package:architecture_training/services/Api/fake_api.dart';
import 'package:architecture_training/services/Api/http_api.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.asNewInstance();

 const bool USE_FAKE_IMPLEMENTATION = true;

void setUpLocator(){

 locator.registerLazySingleton<Api>(() => USE_FAKE_IMPLEMENTATION ? FakeApi() : HttpApi());
}