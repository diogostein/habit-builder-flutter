import 'lesson.dart';

class Course {
  final int id;
  final String? image;
  final String name;
  final String duration;
  final int numberOfLessons;
  final List<Lesson> lessons;

  Course({
    required this.id,
    required this.name,
    required this.duration,
    required this.numberOfLessons,
    this.image,
    required this.lessons,
  });
}
