import 'package:flutter/material.dart';
import 'package:tutorial/config/color.dart';
import 'package:tutorial/config/theme.dart';

extension ColorExtension on Color {
  Color of(
    BuildContext context, {
    Color? dark,
  }) {
    var contrast = AppColor.contrastColor(this);
    if (AppTheme.isDarkMode(context)) {
      return dark ?? contrast;
    }
    return this;
  }
}
