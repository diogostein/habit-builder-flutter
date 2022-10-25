class Lesson {
  final String name;
  final int durationInSeconds;
  final int position;
  final bool locked;

  Lesson({
    required this.name,
    required this.durationInSeconds,
    required this.position,
    required this.locked,
  });

  String get durationInHoursAndMinutes {
    final minutes = Duration(seconds: durationInSeconds).inMinutes;
    final seconds = (durationInSeconds % 60).toString().padLeft(2, '0');

    return '$minutes:$seconds';
  }
}
