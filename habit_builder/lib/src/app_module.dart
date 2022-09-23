import 'package:flutter_modular/flutter_modular.dart';

import 'modules/onboarding/onboarding_module.dart';
import 'splash_screen.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashScreen()),
        ModuleRoute('/onboarding', module: OnboardingModule()),
      ];
}
