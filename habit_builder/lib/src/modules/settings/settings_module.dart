import 'package:flutter_modular/flutter_modular.dart';

import 'ui/settings_page.dart';

class SettingsModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SettingsPage()),
      ];
}
