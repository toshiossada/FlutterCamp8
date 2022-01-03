import 'package:flutter_modular/flutter_modular.dart';

import 'modules/counter/counter_module.dart';
import 'modules/splash_screen/splash_module.dart';

class AppModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: SplashModule()),
    ModuleRoute('/counter', module: CounterModule()),
  ];
}
