import 'package:get_it/get_it.dart';

import 'core/utils/validator.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<Validator>(Validator());
}
