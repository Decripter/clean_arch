import 'package:fpdart/fpdart.dart';

import '../entities/comment.dart';
import '../entities/post.dart';
import '../errors/errors.dart';

abstract class IPostRepository {
  Future<Either<IPostExceptioms, List<Post>>> getPosts();
  Future<Either<IPostExceptioms, List<Comment>>> getPostsComments(
    String postId,
  );
}
