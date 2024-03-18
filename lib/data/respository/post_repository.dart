import 'package:block_arch/data/models/post.dart';
import 'package:block_arch/data/services/providers/post_providers.dart';

class PostRepository {
  final PostProviders providers;

  PostRepository(this.providers);

  Future<dynamic> fetchPosts() async {
    final posts = await providers.fetchPosts();
    return posts.map((e) => Post.fromJson(e)).toList();
  }
}
