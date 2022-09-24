import 'package:flutter_modular/flutter_modular.dart';

import 'ui/login_page.dart';

class AuthenticationModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const LoginPage()),
      ];
}
