

import 'package:animeku/service/page-service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  
  //* Register as singleton
  locator.registerSingleton(PageService());
}