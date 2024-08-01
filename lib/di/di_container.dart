import 'package:cyberapp/router/router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

final class DIContainer {
  static void registerDI() {
    GetIt.I.registerSingleton<AppRouter>(AppRouter());
    GetIt.I.registerFactory<User>(() => FirebaseAuth.instance.currentUser!);
  }
}
