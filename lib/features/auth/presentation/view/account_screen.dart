import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
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
                'Your email: \n ${user?.email}',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20,),
              Text(
                'Your ID: \n ${user?.uid}',
                textAlign: TextAlign.center,
              ),
              TextButton(
                  onPressed: () {
                    logout();
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
