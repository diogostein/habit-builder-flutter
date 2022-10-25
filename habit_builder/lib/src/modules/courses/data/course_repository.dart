import 'package:habit_builder/src/modules/courses/data/models/lesson.dart';

import 'models/course.dart';

class CourseRepository {
  List<Course> getCourses() => List.unmodifiable([
        Course(
          id: 1,
          image: 'assets/images/courses/course_1.png',
          name:
              '30 Day Journal Challenge - Establish a Habit of Daily Journaling',
          duration: '2h 41m',
          numberOfLessons: 37,
          lessons: [
            Lesson(
              name: 'Introduction',
              durationInSeconds: 136,
              position: 1,
              locked: false,
            ),
            Lesson(
              name: 'Adopt Prompts to Covid-19',
              durationInSeconds: 188,
              position: 2,
              locked: true,
            ),
            Lesson(
              name: 'Choosing a Notebook',
              durationInSeconds: 366,
              position: 3,
              locked: true,
            ),
            Lesson(
              name: 'Optional Supplies',
              durationInSeconds: 124,
              position: 4,
              locked: true,
            ),
            Lesson(
              name: 'Day 1',
              durationInSeconds: 218,
              position: 5,
              locked: true,
            ),
          ],
        ),
        Course(
          id: 2,
          image: 'assets/images/courses/course_2.png',
          name: 'Self Help Series: How to Create and Maintain Good Habits',
          duration: '4h 6m',
          numberOfLessons: 24,
          lessons: [
            Lesson(
              name: 'Introduction',
              durationInSeconds: 136,
              position: 1,
              locked: false,
            ),
            Lesson(
              name: 'Adopt Prompts to Covid-19',
              durationInSeconds: 188,
              position: 2,
              locked: true,
            ),
            Lesson(
              name: 'Choosing a Notebook',
              durationInSeconds: 366,
              position: 3,
              locked: true,
            ),
            Lesson(
              name: 'Optional Supplies',
              durationInSeconds: 124,
              position: 4,
              locked: true,
            ),
            Lesson(
              name: 'Day 1',
              durationInSeconds: 218,
              position: 5,
              locked: true,
            ),
          ],
        )
      ]);

  Course getCourseById(int id) => getCourses().firstWhere((e) => e.id == id);
}
