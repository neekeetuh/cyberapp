import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/auth/presentation/providers.dart';
import 'package:cyberapp/ui/services/services.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SignupScreen extends HookConsumerWidget {
  const SignupScreen({super.key});

  static final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPasswordHidden = useState<bool>(true);
    final emailController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');
    final repeatPasswordController = useTextEditingController(text: '');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signing up'),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(30)),
        margin: const EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height / 2,
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
                validator: (password) => password != null && password.length < 6
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
              TextFormField(
                controller: repeatPasswordController,
                autocorrect: false,
                obscureText: isPasswordHidden.value,
                validator: (password) => password != null && password.length < 6
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
                    await signUp(
                      context,
                      formKey,
                      emailController.text,
                      passwordController.text,
                      repeatPasswordController.text,
                    );
                    ref.invalidate(currentUserProvider);
                  },
                  text: 'Sign up'),
              TextButton(
                  onPressed: () {
                    AutoRouter.of(context).popUntilRoot();
                  },
                  child: const Text('Sign in')),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> signUp(
  BuildContext context,
  GlobalKey<FormState> formKey,
  String email,
  String password,
  String repeatedPassword,
) async {
  final isValid = formKey.currentState!.validate();
  if (!isValid) return;

  if (password != repeatedPassword) {
    SnackBarService.showSnackBar(
      context,
      'Passwords should be the same',
      true,
    );
    return;
  }

  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );
  } on FirebaseAuthException catch (e) {
    print(e.code);

    if (e.code == 'email-already-in-use') {
      SnackBarService.showSnackBar(
        context,
        'This email is already used, try with a different one',
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
