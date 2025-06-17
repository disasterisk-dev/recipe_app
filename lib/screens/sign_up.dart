import 'package:flutter/material.dart';
import 'package:recipe_app/components/styled_button.dart';
import 'package:recipe_app/components/text_widgets.dart';
import 'package:recipe_app/services/auth_service.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  String? _errorFeedback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // intro text
            const Center(
              child: BodyText("Sign Up for a new account"),
            ),
            const SizedBox(height: 16),

            // email address
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(labelText: "Email"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your email";
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            // password
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Password"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a password";
                }
                if (value.length < 8) {
                  return "Password must be at least 8 characters";
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            // confirm password
            TextFormField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Confirm Password"),
              validator: (value) {
                if (value == null || value != _passwordController.text.trim()) {
                  return "Passwords do not match";
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            // error feedback
            if (_errorFeedback != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ErrorText(_errorFeedback!),
              ),

            // submit
            StyledButton(
              onPressed: () async {
                setState(() {
                  _errorFeedback = null;
                });
                if (_formKey.currentState!.validate()) {
                  final email = _emailController.text.trim();
                  final password = _passwordController.text.trim();

                  final user = await AuthService.signUp(email, password);

                  if (user == null) {
                    setState(() {
                      _errorFeedback = AuthService.error;
                    });
                  }
                }
              },
              child: const ButtonText("Sign Up"),
            )
          ],
        ),
      ),
    );
  }
}
