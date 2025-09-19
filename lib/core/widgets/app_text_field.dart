import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool obscure;

  const AppTextField({
    super.key,
    required this.label,
    required this.icon,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
      ),
    );
  }
}
