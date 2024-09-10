import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';
@riverpod
User? currentUser(CurrentUserRef ref) => FirebaseAuth.instance.currentUser;