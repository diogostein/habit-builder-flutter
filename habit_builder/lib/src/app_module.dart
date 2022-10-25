import 'package:flutter_modular/flutter_modular.dart';
import 'package:habit_builder/src/modules/home/ui/tracking_habits/tracking_habits_page.dart';

import 'modules/authentication/authentication_module.dart';
import 'modules/courses/course_module.dart';
import 'modules/home/home_module.dart';
import 'modules/onboarding/onboarding_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const TrackingHabitsPage()),
        ModuleRoute('/onboarding', module: OnboardingModule()),
        ModuleRoute('/authentication', module: AuthenticationModule()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/courses', module: CourseModule()),
      ];
}
