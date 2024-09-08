import 'package:cyberapp/core/comments/data/data.dart';
import 'package:cyberapp/core/comments/domain/domain.dart';
import 'package:cyberapp/features/discussions/data/data.dart';
import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:cyberapp/router/router.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

final class DIContainer {
  static void registerDI() async{
    GetIt.I.registerSingleton<AppRouter>(AppRouter());
    GetIt.I.registerSingletonAsync<Box<Discussion>>(
            () => Hive.openBox<Discussion>('discussions'));
    GetIt.I.registerSingletonAsync<Box<Comment>>(
            () => Hive.openBox<Comment>('comments'));
    await GetIt.I.allReady();
    GetIt.I.registerSingleton<DiscussionsRepository>(
        DiscussionsRepository(discussionsBox: GetIt.I<Box<Discussion>>()));
    GetIt.I.registerSingleton<CommentsRepository>(
        CommentsRepository(commentsBox: GetIt.I<Box<Comment>>()));
  }
}
