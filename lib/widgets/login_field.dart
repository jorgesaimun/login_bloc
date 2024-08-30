import 'package:flutter/material.dart';
import 'package:login_bloc/pallete.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 300),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 4,
              color: Pallete.borderColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 4,
              color: Pallete.gradient1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          contentPadding: const EdgeInsets.all(20),
        ),
      ),
    );
  }
}
