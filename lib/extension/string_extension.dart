import 'package:flutter/material.dart';
import 'package:tutorial/config/theme.dart';
import 'package:flutter_svg/svg.dart';

extension NumberSplitter on String {
  Widget render(
    BuildContext context, {
    BoxFit boxFit = BoxFit.scaleDown,
    void Function()? onTap,
  }) {
    return InkWell(
      overlayColor: WidgetStateColor.transparent,
      onTap: onTap,
      child: SvgPicture.asset(
        AppTheme.getAsset(context, this),
        fit: boxFit,
      ),
    );
  }

  String get capitalize {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  // Helper function to convert camelCase to separate words
  String get camelCaseToWords {
    // Regular expression to identify camelCase patterns
    final RegExp regExp = RegExp(r'(?<=[a-z])[A-Z]');

    // Replace camelCase with a space before the capital letter, then trim spaces
    return replaceAllMapped(regExp, (Match match) => ' ${match.group(0)}')
        .toLowerCase();
  }

  bool get isValidUrl {
    return RegExp(
            r"((https?:\/\/)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{2,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*))")
        .hasMatch(this);
  }

  bool get isValidEmail {
    return RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
        .hasMatch(this);
  }

  bool get isValidPassword {
    return hasDigit && hasMin8 && hasCapital && hasSmall && hasSpecial;
  }

  bool get hasDigit {
    return RegExp(r"(?=.*[0-9])").hasMatch(this);
  }

  bool get hasMin8 {
    return RegExp(r"^.{8,}$").hasMatch(this);
  }

  bool get hasCapital {
    return RegExp(r"[A-Z]").hasMatch(this);
  }

  bool get hasSpecial {
    return RegExp(r"(?=.*[!\@\#\$%\&\*\(\)\-\+\=:;'\?,\.<>\/\\|`~\{\}])")
        .hasMatch(this);
  }

  bool get hasSmall {
    return RegExp(r"[a-z]").hasMatch(this);
  }

  String? get pureValue {
    return isEmpty ? null : this;
  }
}
