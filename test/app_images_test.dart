import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:tutorial/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.girl).existsSync(), true);
  });
}
