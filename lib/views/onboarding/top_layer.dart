part of './onboarding_screen.dart';

class TopLayer extends StatelessWidget {
  const TopLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: CurvedPainter(
                color: AppColor.orange.of(context),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              AppImages.girl,
              height: 350.h,
            ),
          ),
        ],
      ),
    );
  }
}
