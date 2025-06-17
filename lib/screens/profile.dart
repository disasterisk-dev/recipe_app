import 'package:flutter/material.dart';
import 'package:recipe_app/components/styled_button.dart';
import 'package:recipe_app/components/text_widgets.dart';
import 'package:recipe_app/main.dart';
import 'package:recipe_app/services/auth_service.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const TitleText("Your Profile")),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HeadingText("Profile"),
            const SizedBox(height: 16),
            // email

            StyledButton(
              onPressed: () {
                AuthService.signOut();
                Navigator.pop(context);
              },
              child: const ButtonText("Sign Out"),
            )
          ],
        ),
      ),
    );
  }
}
