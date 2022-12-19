import 'models/author.dart';
import 'models/post.dart';

class CommunityRepository {
  List<Post> getPosts() => List.unmodifiable([
        Post(
          id: 1,
          author: Author(
            name: 'Sophie',
            image: 'assets/images/sophie-radcliffe.jpg',
          ),
          date: '41m ago',
          message:
              'Man, you\'re my new guru! Viewing the lessons for a second time. Thoroughly pleased. And impressed that you draw from scientific literature in telling memorable...',
          likeCount: 2500,
          messageCount: 22,
        ),
        Post(
          id: 2,
          author: Author(
            name: 'Maria',
            image: 'assets/images/sophie-radcliffe.jpg',
          ),
          date: '41m ago',
          message:
              'I loved the course! I\'ve been trying to break all this great stuff down into manageable chunks to help my clients develop healthy habits and achieve their personal...',
          likeCount: 4600,
          messageCount: 123,
        ),
        Post(
          id: 2,
          author: Author(
            name: 'Kate',
            image: 'assets/images/sophie-radcliffe.jpg',
          ),
          date: '41m ago',
          message:
              'This course contains the most complete material on habit formation that I\'ve seen. There is just enough theory to explain the principles, and not so much...',
          likeCount: 780,
          messageCount: 5,
        ),
      ]);
}
