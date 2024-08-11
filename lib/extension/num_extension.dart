import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension NumberExtension on num {
  TextStyle get w100 {
    return TextStyle(
      fontSize: sp,
      fontWeight: FontWeight.w100,
    );
  }

  TextStyle get w200 {
    return TextStyle(
      fontSize: sp,
      fontWeight: FontWeight.w200,
    );
  }

  TextStyle get w300 {
    return TextStyle(
      fontSize: sp,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle get w400 {
    return TextStyle(
      fontSize: sp,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get regular {
    return TextStyle(
      fontSize: sp,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get w600 {
    return TextStyle(
      fontSize: sp,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get w700 {
    return TextStyle(
      fontSize: sp,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get w800 {
    return TextStyle(
      fontSize: sp,
      fontWeight: FontWeight.w800,
    );
  }

  TextStyle get w900 {
    return TextStyle(
      fontSize: sp,
      fontWeight: FontWeight.w900,
    );
  }

  TextStyle get bold {
    return TextStyle(
      fontSize: sp,
      fontWeight: FontWeight.bold,
    );
  }
}
