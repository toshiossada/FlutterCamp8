import 'package:flutter_modular/flutter_modular.dart';

import 'pages/home/home_page.dart';
import 'pages/home/home_store.dart';
import 'pages/home/home_controller.dart';

class CounterModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => HomeController(
          store: i(),
        )),
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const HomePage()),
  ];
}
