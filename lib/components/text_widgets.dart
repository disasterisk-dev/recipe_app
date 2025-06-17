import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/theme.dart';

class BodyText extends StatelessWidget {
  const BodyText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          color: AppColors.bold,
          fontSize: 16,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

class SubheadingText extends StatelessWidget {
  const SubheadingText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          color: AppColors.boldMuted,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  const HeadingText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.rubik(
        textStyle: TextStyle(
          color: AppColors.brand,
          fontWeight: FontWeight.w800,
          fontSize: 18,
          letterSpacing: 1,
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.rubik(
        textStyle: TextStyle(
          color: AppColors.inverse,
          fontWeight: FontWeight.w900,
          fontSize: 24,
          letterSpacing: 2,
        ),
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  const ButtonText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.rubik(
        textStyle: TextStyle(
          color: AppColors.inverse,
          fontWeight: FontWeight.w500,
          fontSize: 16,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

class LinkText extends StatelessWidget {
  const LinkText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          color: AppColors.brand,
          fontSize: 16,
          letterSpacing: 0.5,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class ErrorText extends StatelessWidget {
  const ErrorText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          color: AppColors.warning,
          fontSize: 16,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
