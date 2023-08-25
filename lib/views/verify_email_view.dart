import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart' as routes;
import 'package:mynotes/services/auth/auth_service.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verify Email"),
      ),
      body: Column(children: [
        const Text(
            "We've sent you a verification email. Please open it to verify your account."),
        const Text(
            "If you haven't received a verification email yet, press the button below."),
        TextButton(
          onPressed: () async {
            await AuthService.firebase().sendEmailVerification();
          },
          child: const Text("Resend email verification"),
        ),
        TextButton(
          onPressed: () async {
            await AuthService.firebase().logout();
            if (context.mounted) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                routes.registerRoute,
                (_) => false,
              );
            }
          },
          child: const Text("Restart"),
        ),
      ]),
    );
  }
}
