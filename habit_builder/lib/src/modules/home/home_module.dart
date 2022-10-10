import 'package:flutter_modular/flutter_modular.dart';

import 'ui/tracking_habits/tracking_habits_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const TrackingHabitsPage()),
      ];
}
