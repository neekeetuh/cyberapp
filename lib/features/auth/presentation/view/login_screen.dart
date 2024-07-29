import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/router/router.dart';
import 'package:cyberapp/ui/services/services.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isPasswordHidden = useState<bool>(true);
    final emailController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signing In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          key: formKey,
          child: Column(
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
                  border: OutlineInputBorder(),
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
                validator: (password) => password != null && password.length < 6
                    ? 'Enter a password with at least 6 symbols in it'
                    : null,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
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
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    login(context, formKey, emailController.text, passwordController.text);
                  },
                  child: const Center(
                    child: Text('Sign in'),
                  )),
              const SizedBox(
                height: 20,
              ),
              TextButton(onPressed: () {
                AutoRouter.of(context).push(const SignupRoute());
              }, child: const Text('Sign up')),
            ],
          ),
        ),
      ),
    );
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
}
