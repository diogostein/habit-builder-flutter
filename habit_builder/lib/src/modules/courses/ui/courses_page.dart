import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:habit_builder/src/core/mixin/menu_actions.dart';

import '../data/course_repository.dart';
import '../data/models/course.dart';
import 'widgets/intro_banner.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> with MenuActions {
  final _repository = Modular.get<CourseRepository>();

  List<Course> _courses = [];

  @override
  void initState() {
    super.initState();
    _courses = _repository.getCourses();
  }

  @override
  Widget build(BuildContext context) {
    return HBSliverScaffold(
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
      slivers: [
        const SliverToBoxAdapter(
          child: IntroBanner(),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: _courses.length,
            (context, index) {
              final course = _courses[index];
              return HBCourseCard(
                onTap: () => Modular.to.pushNamed('${course.id}'),
                assetPath: course.image ?? '',
                title: course.name,
                caption1: course.duration,
                caption2: '${course.numberOfLessons} Lessons',
              );
            },
          ),
        ),
      ],
    );
  }
}
