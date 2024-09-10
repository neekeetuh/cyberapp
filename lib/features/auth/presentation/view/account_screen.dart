import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/auth/presentation/providers.dart';
import 'package:cyberapp/ui/ui.dart';
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
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: primaryColor.withOpacity(0.1)),
        padding: const EdgeInsets.all(30.0),
        margin: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height / 2.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Your email:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              user.email ?? '-',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Your ID:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              user.uid,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomizedButton(
                text: 'Logout',
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  ref.invalidate(currentUserProvider);
                  AutoRouter.of(context).popUntilRoot();
                })
          ],
        ),
      ),
    );
  }
}
