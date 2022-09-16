import 'package:fpdart/fpdart.dart';

import '../entities/post.dart';
import '../errors/errors.dart';
import '../repositories/post_repositories.dart';

abstract class IGetPosts {
  Future<Either<IPostExceptioms, List<Post>>> call();
}

class GetPosts implements IGetPosts {
  final IPostRepository repository;

  GetPosts(this.repository);

  @override
  Future<Either<IPostExceptioms, List<Post>>> call() async {
    return await repository.getPosts();
  }
  //metodo executor
}
