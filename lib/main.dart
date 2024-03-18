import 'package:block_arch/cubit/posts_cubit.dart';
import 'package:block_arch/data/respository/post_repository.dart';
import 'package:block_arch/data/services/api_client.dart';
import 'package:block_arch/data/services/providers/post_providers.dart';
import 'package:block_arch/presentation/post_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Posts"),
        ),
        body: BlocProvider(
          create: (context) => PostsCubit(
              postRepository: PostRepository(PostProviders(ApiClient()))),
          child: const PostPage(),
        ));
  }
}
