import 'package:connect/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:connect/resources/auth_methods.dart';
import 'package:connect/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 100),
                height: 300,
                child:
                    Image.asset('assets/images/onboarding.png', scale: 2.35)),
            Container(
              padding: EdgeInsets.only(top: 50),
              child: const Text(
                'Connect',
                // ignore: unnecessary_const
                style: const TextStyle(
                  fontFamily: 'InterTight',
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: footerColor,
                ),
              ),
            ),
            const Text(
              'To Whom You Want',
              // ignore: unnecessary_const
              style: const TextStyle(
                fontFamily: 'InterTight',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: footerColor,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 110),
              child: CustomButton(
                text: 'Google Sign In',
                onPressed: () async {
                  bool res = await AuthMethods().signInWithGoogle(context);
                  if (res) {
                    Navigator.pushNamed(context, '/home');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
