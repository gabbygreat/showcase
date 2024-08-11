import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signals/signals_flutter.dart';
import 'package:tutorial/config/screen_size.dart';
import 'package:tutorial/config/theme.dart';
import 'package:tutorial/views/onboarding/onboarding_screen.dart';

import 'notifier/notifier.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(builder: (context, orientation) {
          return ScreenUtilInit(
            designSize: DesignSizeConfig().designSize(
              orientation: orientation,
              constraints: constraints,
            ),
            minTextAdapt: true,
            useInheritedMediaQuery: true,
            ensureScreenSize: true,
            rebuildFactor: (old, data) => true,
            builder: (context, child) {
              return MaterialApp(
                theme: AppTheme.instance.lightTheme,
                darkTheme: AppTheme.instance.darkTheme,
                themeMode: isDarkMode.watch(context)
                    ? ThemeMode.dark
                    : ThemeMode.light,
                home: const OnboardingScreen(),
              );
            },
          );
        });
      },
    );
  }
}
