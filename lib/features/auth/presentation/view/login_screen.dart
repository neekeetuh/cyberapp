import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/auth/presentation/data/data.dart';
import 'package:cyberapp/router/router.dart';
import 'package:cyberapp/ui/services/services.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPasswordHidden = useState<bool>(true);
    final emailController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signing In'),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(30)),
        margin: const EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height / 2.5,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  autocorrect: false,
                  validator: (email) =>
                  email != null && !EmailValidator.validate(email)
                      ? 'Enter a correct email'
                      : null,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Enter an email',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  autocorrect: false,
                  obscureText: isPasswordHidden.value,
                  validator: (password) =>
                  password != null && password.length < 6
                      ? 'Enter a password with at least 6 symbols in it'
                      : null,
                  decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      hintText: 'Enter a password',
                      suffix: InkWell(
                        onTap: () {
                          isPasswordHidden.value = !isPasswordHidden.value;
                        },
                        child: Icon(
                          isPasswordHidden.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.black,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomizedButton(
                    onPressed: () async {
                      await login(context, formKey, emailController.text,
                          passwordController.text);
                      ref.invalidate(currentUserProvider);
                    },
                    text: 'Sign in'),
                TextButton(
                    onPressed: () {
                      AutoRouter.of(context).push(const SignupRoute());
                    },
                    child: const Text('Sign up')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> login(
    BuildContext context,
    GlobalKey<FormState> formKey,
    String email,
    String password,
    ) async {
  final isValid = formKey.currentState!.validate();
  if (!isValid) return;

  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );
  } on FirebaseAuthException catch (e) {
    print(e.code);

    if (e.code == 'user-not-found' || e.code == 'wrong-password') {
      SnackBarService.showSnackBar(
        context,
        'Incorrect login or password',
        true,
      );
      return;
    } else {
      SnackBarService.showSnackBar(
        context,
        'Unknown exception! Try again or contact support',
        true,
      );
    }
  }
  AutoRouter.of(context).popUntilRoot();
}
