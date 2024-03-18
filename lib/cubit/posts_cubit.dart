import 'package:block_arch/cubit/post_state.dart';
import 'package:block_arch/data/respository/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsCubit extends Cubit<PostsState> {
  final PostRepository postRepository;
  PostsCubit({required this.postRepository}) : super(PostsInitial());

  void fetchPosts() {
    postRepository
        .fetchPosts()
        .then((value) => emit(PostsLoaded(posts: value)));
  }
}
