import 'package:flutter_modular/flutter_modular.dart';

import 'ui/profile_page.dart';

class ProfileModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ProfilePage()),
      ];
}
