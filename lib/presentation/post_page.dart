import 'package:block_arch/cubit/post_state.dart';
import 'package:block_arch/cubit/posts_cubit.dart';
import 'package:block_arch/data/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PostsCubit>(context).fetchPosts();
    return BlocBuilder<PostsCubit, dynamic>(builder: (context, state) {
      if (state is PostsLoaded) {
        return ListView.builder(
          itemCount: (state).posts.length,
          itemBuilder: (context, index) {
            return Column(
              children:
                  (state).posts.map((post) => postItem(post, context)).toList(),
            );
          },
        );
      } else {
        return const Text("No Data");
      }
    });
  }

  Widget postItem(Post post, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: ListTile(
        title: Text(post.title.toString()),
        subtitle: Text(post.body.toString()),
      ),
    );
  }
}
