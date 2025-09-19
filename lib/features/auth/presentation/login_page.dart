import 'package:flutter/material.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/app_text_field.dart';
import '../../../core/widgets/app_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Welcome Back", style: AppTextStyles.headline),
              const SizedBox(height: 20),
              const AppTextField(label: "Email", icon: Icons.email),
              const SizedBox(height: 16),
              const AppTextField(
                label: "Password",
                icon: Icons.lock,
                obscure: true,
              ),
              const SizedBox(height: 24),
              AppButton(
                text: "Login",
                onPressed: () {
                  // TODO: hook into Auth logic later
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
