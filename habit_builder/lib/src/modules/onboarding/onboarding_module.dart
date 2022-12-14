import 'package:flutter_modular/flutter_modular.dart';

import 'ui/onboarding_page.dart';

class OnboardingModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const OnboardingPage()),
      ];
}
