import 'course.dart';

class CourseRepository {
  List<Course> getCourses() => List.unmodifiable([
        Course(
          id: 1,
          image: 'assets/images/courses/course_1.png',
          name:
              '30 Day Journal Challenge - Establish a Habit of Daily Journaling',
          duration: '2h 41m',
          numberOfLessons: 37,
        ),
        Course(
          id: 2,
          image: 'assets/images/courses/course_2.png',
          name: 'Self Help Series: How to Create and Maintain Good Habits',
          duration: '4h 6m',
          numberOfLessons: 24,
        )
      ]);
}
