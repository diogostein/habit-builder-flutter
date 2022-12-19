import 'author.dart';

class Post {
  final int id;
  final Author author;
  final String date;
  final String message;
  final int likeCount;
  final int messageCount;

  Post({
    required this.id,
    required this.author,
    required this.date,
    required this.message,
    required this.likeCount,
    required this.messageCount,
  });
}
