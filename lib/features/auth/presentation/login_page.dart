import 'package:flutter/material.dart';
import 'package:myapp/features/home_layout_rent/presentation/mainlayout.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/app_text_field.dart';
import '../../../core/widgets/app_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login(BuildContext context) {
    final email= _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter both email and password")),
      );
      return;
    } 
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Mainlayout()),
    );
  }

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
              AppTextField(
                label: "Email",
                icon: Icons.email,
                controller: _emailController,
              ),
              const SizedBox(height: 16),
              AppTextField(
                label: "Password",
                icon: Icons.lock,
                obscure: true,
                controller: _passwordController,
              ),
              const SizedBox(height: 24),
              AppButton(text: "Login", onPressed: () => _login(context)),
            ],
          ),
        ),
      ),
    );
  }
}
