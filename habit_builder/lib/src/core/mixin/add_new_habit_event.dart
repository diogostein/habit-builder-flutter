import 'package:flutter_modular/flutter_modular.dart';

mixin AddNewHabitEvent {
  onAddNewHabit() => Modular.to.pushNamed('/habit/new');
}
