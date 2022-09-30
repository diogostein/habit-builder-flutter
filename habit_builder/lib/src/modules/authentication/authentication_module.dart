import 'package:flutter_modular/flutter_modular.dart';
import 'package:habit_builder/src/modules/authentication/ui/reset_password/reset_password_page.dart';

import 'ui/login/login_page.dart';

class AuthenticationModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const LoginPage(),
        ),
        ChildRoute(
          '/reset-password',
          child: (context, args) => const ResetPasswordPage(),
        ),
      ];
}
