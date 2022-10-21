import 'package:design_system/design_system.dart';
import 'package:flutter_modular/flutter_modular.dart';

mixin MenuActions {
  onMenuIconPressed(HBMenuIconType menuIconType) {
    switch (menuIconType) {
      case HBMenuIconType.home:
        Modular.to.navigate('/home');
        break;
      case HBMenuIconType.courses:
        Modular.to.navigate('/courses');
        break;
      case HBMenuIconType.community:
        Modular.to.navigate('/community');
        break;
      case HBMenuIconType.settings:
        Modular.to.navigate('/settings');
    }
  }
}
