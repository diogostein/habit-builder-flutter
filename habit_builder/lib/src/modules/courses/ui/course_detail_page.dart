import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:habit_builder/src/core/mixin/menu_actions.dart';
import 'package:habit_builder/src/modules/courses/data/course_repository.dart';

import '../data/models/course.dart';
import 'widgets/lesson_list.dart';
import 'widgets/video_box.dart';

class CourseDetailPage extends StatefulWidget {
  final String courseId;

  const CourseDetailPage({super.key, required this.courseId});

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> with MenuActions {
  final _repository = Modular.get<CourseRepository>();

  late Course _course;

  @override
  void initState() {
    super.initState();
    _course = _repository.getCourseById(int.parse(widget.courseId));
  }

  @override
  Widget build(BuildContext context) {
    return HBSliverScaffold(
      headerBar: HBHeaderBar(
        automaticallyImplyLeading: true,
        titleText: _course.name,
      ),
      slivers: [
        SliverToBoxAdapter(
          child: VideoBox(course: _course),
        ),
        SliverToBoxAdapter(
          child: LessonList(course: _course),
        ),
        const SliverToBoxAdapter(child: HBGapHeight()),
      ],
    );
  }
}
