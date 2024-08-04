import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/auth/presentation/data/data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class AccountScreen extends ConsumerWidget {
  final User user;
  const AccountScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                'Your email: \n ${user.email}',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20,),
              Text(
                'Your ID: \n ${user.uid}',
                textAlign: TextAlign.center,
              ),
              TextButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    ref.invalidate(currentUserProvider);
                    AutoRouter.of(context).popUntilRoot();
                  },
                  child: const Text('Logout'))
            ],
          ),
        ),
      ),
    );
  }
}

