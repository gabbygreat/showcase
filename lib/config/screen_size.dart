import 'package:flutter/material.dart';

enum ScreenType {
  small,
  medium,
  large,
  extraLarge,
}

class DesignSizeConfig {
  Size designSize({
    required Orientation orientation,
    required BoxConstraints constraints,
  }) {
    final ScreenType screenType = _determineScreenType(
      constraints,
      orientation,
    );

    switch (screenType) {
      case ScreenType.small:
        return orientation == Orientation.portrait
            ? const Size(375, 667)
            : const Size(667, 375);
      case ScreenType.medium:
        return orientation == Orientation.portrait
            ? const Size(430, 1097)
            : const Size(1097, 430);
      case ScreenType.large:
        return orientation == Orientation.portrait
            ? const Size(500, 1000)
            : const Size(1000, 500);
      case ScreenType.extraLarge:
        return orientation == Orientation.portrait
            ? const Size(768, 1024)
            : const Size(1024, 768);
    }
  }

  ScreenType _determineScreenType(
    BoxConstraints constraints,
    Orientation orientation,
  ) {
    double dimension = orientation == Orientation.portrait
        ? constraints.maxWidth
        : constraints.maxHeight;

    if (dimension <= 320) {
      return ScreenType.small;
    } else if (dimension <= 800) {
      return ScreenType.medium;
    } else if (dimension <= 1080) {
      return ScreenType.large;
    } else {
      return ScreenType.extraLarge;
    }
  }
}
