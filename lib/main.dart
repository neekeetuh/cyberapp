import 'package:cyberapp/cyber_app.dart';
import 'package:cyberapp/di/di_container.dart';
import 'package:cyberapp/features/comments/domain/domain.dart';
import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/features/news/domain/domain.dart';
import 'package:cyberapp/features/rankings/domain/domain.dart';
import 'package:cyberapp/features/stats/domain/domain.dart';
import 'package:cyberapp/router/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  _registerHiveAdapters();
  await Firebase.initializeApp();
  DIContainer.registerDI();
  await GetIt.I.allReady();
  // await GetIt.I<Box<RankingTeam>>().deleteFromDisk();
  // await GetIt.I<Box<Stats>>().deleteFromDisk();
  runApp(ProviderScope(
    child: CyberApp(
      router: GetIt.I<AppRouter>(),
    ),
  ));
}

void _registerHiveAdapters() {
  Hive.registerAdapter(DiscussionAdapter());
  Hive.registerAdapter(CommentAdapter());
  Hive.registerAdapter(LiveMatchAdapter());
  Hive.registerAdapter(MatchResultAdapter());
  Hive.registerAdapter(UpcomingMatchAdapter());
  Hive.registerAdapter(NewsDataAdapter());
  Hive.registerAdapter(RankingTeamAdapter());
  Hive.registerAdapter(StatsAdapter());
}
