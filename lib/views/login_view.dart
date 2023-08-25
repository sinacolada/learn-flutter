import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart' as routes;

import '../utilities/show_error_dialog.dart';
// import 'dart:developer' as devtools show log;

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _email,
            enableSuggestions: false,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration:
                const InputDecoration(hintText: "Enter your email here"),
          ),
          TextField(
            controller: _password,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration:
                const InputDecoration(hintText: "Enter your password here"),
          ),
          TextButton(
            onPressed: () async {
              final email = _email.text;
              final password = _password.text;
              try {
                await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: email,
                  password: password,
                );
                if (context.mounted) {
                  final verifiedUser =
                      FirebaseAuth.instance.currentUser?.emailVerified ?? false;
                  final routeTo = verifiedUser
                      ? routes.notesRoute
                      : routes.verifyEmailRoute;
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    routeTo,
                    (_) => false,
                  );
                }
              } on FirebaseAuthException catch (e) {
                if (e.code == "user-not-found") {
                  await showErrorDialog(
                    context,
                    "User not found",
                  );
                } else if (e.code == "wrong-password") {
                  await showErrorDialog(
                    context,
                    "Wrong password",
                  );
                } else {
                  await showErrorDialog(
                    context,
                    "Error ${e.code}",
                  );
                }
              } catch (e) {
                await showErrorDialog(
                  context,
                  e.toString(),
                );
              }
            },
            child: const Text("Login"),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  routes.registerRoute,
                );
              },
              child: const Text("Not registered yet? Register here!")),
        ],
      ),
    );
  }
}
