import 'user.dart';

class Post {
  final int id;
  final User user;
  final int totalComments;

  Post({
    required this.id,
    required this.user,
    required this.totalComments,
  });
}
