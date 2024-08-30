import 'package:flutter/material.dart';
import 'package:login_bloc/widgets/gradient_button.dart';
import 'package:login_bloc/widgets/login_field.dart';
import 'package:login_bloc/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 70), // Add some space at the top

            const Center(
              child: Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 50),
            SocialButton(
              iconPath: 'assets/svgs/g_logo.svg',
              label: 'Continue with Google',
              //  horizantalpadding: 28,
              onPressed: () {},
            ),

            const SizedBox(height: 20),
            SocialButton(
              iconPath: 'assets/svgs/f_logo.svg',
              label: 'Continue with Facebook',
              horizantalpadding: 28,
              onPressed: () {},
            ),

            const SizedBox(height: 20), // Spacing for consistency

            const Text(
              'or',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 20), // Spacing for consistency

            const LoginField(
              hintText: "Email",
            ),
            const SizedBox(height: 20),

            const LoginField(
              hintText: "Password",
            ),

            const SizedBox(height: 20),

            GradientButton(
              title: "Sign in",
              onPressed: () {},
            ),

            const SizedBox(height: 30), // Final spacing at the bottom
          ],
        ),
      ),
    );
  }
}
