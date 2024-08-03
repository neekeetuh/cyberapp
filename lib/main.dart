import 'package:cyberapp/cyber_app.dart';
import 'package:cyberapp/di/di_container.dart';
import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:cyberapp/router/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(DiscussionAdapter());
  Hive.registerAdapter(CommentAdapter());
  await Firebase.initializeApp();
  DIContainer.registerDI();
  runApp(ProviderScope(
    child: CyberApp(
      router: GetIt.I<AppRouter>(),
    ),
  ));
}
