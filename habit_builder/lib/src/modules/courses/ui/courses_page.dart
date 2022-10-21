import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:habit_builder/src/core/mixin/menu_actions.dart';
import 'package:habit_builder/src/modules/courses/data/course_repository.dart';
import 'package:habit_builder/src/modules/courses/ui/widgets/intro_banner.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> with MenuActions {
  final _repository = Modular.get<CourseRepository>();

  @override
  Widget build(BuildContext context) {
    return HBScaffold(
      extendBody: true,
      hasBackground: true,
      headerBar: HBHeaderBar(
        leading: HBCircleIconButton.drawer(onPressed: () {}),
        titleText: 'Courses',
        trailing: HBCircleIconButton(onPressed: () {}, icon: Icons.search),
      ),
      floatingActionButton: HBFloatingActionButton(
        onPressed: () {},
        child: const HBImage(HBSvgIcons.add),
      ),
      bottomNavigationBar: HBBottomAppBar(
        onMenuIconPressed: onMenuIconPressed,
        activeMenuIcon: HBMenuIconType.courses,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const IntroBanner(),
          ..._repository
              .getCourses()
              .map(
                (e) => HBCourseCard(
                  assetPath: e.image ?? '',
                  title: e.name,
                  caption1: e.duration,
                  caption2: '${e.numberOfLessons} Lessons',
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
