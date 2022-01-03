import 'package:exemplo/app/modules/counter/pages/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

class HomeController {
  load() async {
    await Future.delayed(const Duration(seconds: 2));
    Localization.setTranslationDirectories(['assets/lang']);
    await Localization.configuration();
    Modular.to.pushReplacementNamed('/counter');
  }
}
