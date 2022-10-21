import 'package:flutter_modular/flutter_modular.dart';
import 'package:habit_builder/src/modules/courses/data/course_repository.dart';

import '../courses/ui/courses_page.dart';

class CourseModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => CourseRepository()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const CoursesPage()),
      ];
}
