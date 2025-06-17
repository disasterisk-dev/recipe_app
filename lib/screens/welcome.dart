import 'package:flutter/material.dart';
import 'package:recipe_app/components/text_widgets.dart';
import 'package:recipe_app/screens/sign_in.dart';
import 'package:recipe_app/screens/sign_up.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool isSignUp = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HeadingText("Let's Get Cooking!"),
            if (isSignUp)
              Column(
                children: [
                  const SignUpForm(),
                  const BodyText("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isSignUp = false;
                      });
                    },
                    child: const LinkText("Sign in instead"),
                  )
                ],
              ),
            if (!isSignUp)
              Column(
                children: [
                  const SignInForm(),
                  const BodyText("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isSignUp = true;
                      });
                    },
                    child: const LinkText("Sign up instead"),
                  )
                ],
              ),

            // Social logins
          ],
        ),
      ),
    );
  }
}
