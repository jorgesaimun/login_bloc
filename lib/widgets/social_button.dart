import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_bloc/pallete.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizantalpadding;
  final VoidCallback onPressed;
  const SocialButton({
    super.key,
    required this.iconPath,
    required this.label,
    this.horizantalpadding = 40,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      label: Text(
        label,
        style: const TextStyle(
          fontSize: 18,
          color: Pallete.whiteColor,
        ),
      ),
      icon: SvgPicture.asset(iconPath),
      style: TextButton.styleFrom(
        padding:
            EdgeInsets.symmetric(vertical: 20, horizontal: horizantalpadding),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 4,
            color: Pallete.borderColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
