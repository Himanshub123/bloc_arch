abstract class PostsState {}

class PostsInitial extends PostsState {}

class PostsLoaded extends PostsState {
  final List<dynamic> posts;

  PostsLoaded({required this.posts});
}
