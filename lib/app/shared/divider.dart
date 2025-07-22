import 'package:flutter/material.dart';

import '../shared/colors.dart';

class DividerItem extends StatelessWidget {
  final double paddingHorizontal;
  final double thickness;
  final Color? color;

  const DividerItem({
    super.key,
    this.paddingHorizontal = 20.0,
    this.thickness = 0.5,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
      child: Divider(
        height: 1,
        thickness: thickness,
        color: color ?? AppColors.secondary.withAlpha(100),
      ),
    );
  }
}