import 'package:fpdart/fpdart.dart';

import '../entities/comment.dart';
import '../errors/errors.dart';
import '../repositories/post_repositories.dart';

abstract class IGetPostsComments {
  Future<Either<IPostExceptioms, List<Comment>>> call(String postId);
}

class GetPostComments extends IGetPostsComments {
  final IPostRepository repository;

  GetPostComments(this.repository);

  @override
  Future<Either<IPostExceptioms, List<Comment>>> call(String postId) async {
    if (postId.isEmpty) {
      return left(const ArgumentsExceptions('Post ID is empty!'));
    }
    return await repository.getPostsComments(postId);
  }
}
