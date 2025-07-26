import 'package:flutter/material.dart';
import 'package:umt_election/app/shared/colors.dart';

class LeadingButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color iconColor;
  final Color backgroundColor;
  final double size;

  const LeadingButton({
    super.key,
    this.onPressed,
    this.iconColor = AppColors.black,
    this.backgroundColor = const Color(0xFFF0F2FA),
    this.size = 48.0,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: const CircleBorder(),
      child: InkWell(
        onTap: onPressed ?? () => Navigator.pop(context),
        customBorder: const CircleBorder(),
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.chevron_left, color: iconColor),
        ),
      ),
    );
  }
}
