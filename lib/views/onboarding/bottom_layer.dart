part of './onboarding_screen.dart';

class BottomLayer extends StatelessWidget {
  final Orientation orientation;
  const BottomLayer({
    super.key,
    required this.orientation,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const [34].pad,
        child: Column(
          mainAxisAlignment: orientation == Orientation.landscape
              ? MainAxisAlignment.spaceEvenly
              : MainAxisAlignment.start,
          children: [
            10.verticalSpace,
            Text(
              'Lets start\'s\nyour habits',
              textAlign: TextAlign.center,
              style: 35.bold.of(context, light: AppColor.black),
            ),
            12.verticalSpace,
            Text(
              'lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tespor incidiunt ut',
              textAlign: TextAlign.center,
              style: 20.regular.of(context, light: AppColor.grey),
            ),
            if (orientation == Orientation.portrait) const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.orange.of(context),
                textStyle: 24.bold.of(context, light: AppColor.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.r),
                ),
                padding: const [68, 14].pad,
              ),
              child: const Text('Start Now'),
            ),
            50.verticalSpace,
          ],
        ),
      ),
    );
  }
}
