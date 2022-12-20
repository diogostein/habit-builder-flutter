import 'package:flutter_modular/flutter_modular.dart';

import 'ui/new_habit_page.dart';

class HabitModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/new', child: (context, args) => const NewHabitPage()),
      ];
}
