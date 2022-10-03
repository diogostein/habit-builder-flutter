import 'package:flutter_modular/flutter_modular.dart';

import 'ui/login/login_page.dart';
import 'ui/reset_password/reset_password_page.dart';
import 'ui/signup/sign_up_page.dart';

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
        ChildRoute(
          '/sign-up',
          child: (context, args) => const SignUpPage(),
        ),
      ];
}
