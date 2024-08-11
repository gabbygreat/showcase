import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutorial/config/color.dart';
import 'package:tutorial/extension/color_extension.dart';
import 'package:tutorial/extension/list_extension.dart';
import 'package:tutorial/extension/num_extension.dart';
import 'package:tutorial/extension/string_extension.dart';
import 'package:tutorial/extension/text_style_extension.dart';
import 'package:tutorial/notifier/notifier.dart';
import 'package:tutorial/resources/resources.dart';
import 'package:tutorial/utils/paint.dart';

part './bottom_layer.dart';
part './top_layer.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => isDarkMode.set(!isDarkMode.value),
          icon: const Icon(Icons.brightness_1),
        ),
        actions: [
          AppSvg.home.render(context),
        ],
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Column(
              children: [
                const TopLayer(),
                BottomLayer(
                  orientation: orientation,
                ),
              ],
            );
          } else {
            return Row(
              children: [
                const TopLayer(),
                BottomLayer(
                  orientation: orientation,
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
