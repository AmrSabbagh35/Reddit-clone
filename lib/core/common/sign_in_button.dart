import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/core/constants/constants.dart';
import 'package:reddit_clone/features/auth/controllers/auth_controller.dart';
import 'package:reddit_clone/theme/pallete.dart';

class SignInButton extends ConsumerWidget {
  final bool isFromLogin;
  const SignInButton({Key? key, this.isFromLogin = true}) : super(key: key);

  void signInWithGoogle(BuildContext context, WidgetRef ref) {
    ref
        .read(authControllerProvider.notifier)
        .signInWithGoogle(context, isFromLogin);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton.icon(
      onPressed: () => signInWithGoogle(context, ref),
      icon: Image.asset(
        Constants.googlepath,
        width: 35,
      ),
      label: const Text(
        'Continue With Google',
        style: TextStyle(fontSize: 18),
      ),
      style: ElevatedButton.styleFrom(
          primary: Pallete.greyColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          minimumSize: const Size(double.infinity, 50)),
    );
  }
}
