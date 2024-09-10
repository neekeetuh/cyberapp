import 'package:cyberapp/features/comments/presentation/bloc/comments_bloc/comments_bloc.dart';
import 'package:cyberapp/features/comments/data/data.dart';
import 'package:cyberapp/features/discussions/data/data.dart';
import 'package:cyberapp/features/discussions/presentation/discussions_list/bloc/discussions_bloc.dart';
import 'package:cyberapp/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:get_it/get_it.dart';

class CyberApp extends StatelessWidget {
  final AppRouter router;

  const CyberApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              DiscussionsBloc(repository: GetIt.I<DiscussionsRepository>()),
        ),
        BlocProvider(
          create: (context) =>
              CommentsBloc(repository: GetIt.I<CommentsRepository>()),
        ),
      ],
      child: MaterialApp.router(
        title: 'CyberApp',
        theme: mainTheme,
        routerConfig: router.config(),
      ),
    );
  }
}
