import 'package:flutter_modular/flutter_modular.dart';

import 'modules/authentication/authentication_module.dart';
import 'modules/courses/course_module.dart';
import 'modules/home/home_module.dart';
import 'modules/onboarding/onboarding_module.dart';
import 'splash_screen.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashScreen()),
        ModuleRoute('/onboarding', module: OnboardingModule()),
        ModuleRoute('/authentication', module: AuthenticationModule()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/courses', module: CourseModule()),
      ];
}
