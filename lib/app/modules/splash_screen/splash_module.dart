import 'package:flutter_modular/flutter_modular.dart';

import 'pages/home/home_controller.dart';
import 'pages/home/home_page.dart';

class SplashModule extends Module {
  @override
  List<Bind> get binds => [Bind.factory((i) => HomeController())];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const HomePage()),
  ];
}
