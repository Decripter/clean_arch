import 'package:clean_arch/src/modules/post/domain/entities/comment.dart';
import 'package:clean_arch/src/modules/post/domain/repositories/post_repositories.dart';
import 'package:clean_arch/src/modules/post/domain/usecases/get_post_comments.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class PostRepositoryMock extends Mock implements IPostRepository {}

Future<void> main() async {
  final repository = PostRepositoryMock();
  final usecase = GetPostComments(repository);
  test('should retorn a List of Comments', () async {
    when(() => repository.getPostsComments('1'))
        .thenAnswer((_) async => right([]));
  });
  final result = await usecase('1');
  expect(result.fold(id, id), isA<List<Comment>>());
}
