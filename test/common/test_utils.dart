import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

const devices = [
  Device(
    name: 'Desktop',
    size: Size(400, 300),
  ),
];

extension CaptureGolden on WidgetTester {
  Future<void> captureGolden({
    required String name,
    required bool shouldSettle,
  }) async {
    await multiScreenGolden(
      this,
      name,
      devices: devices,
      customPump: (tester) async {
        if (shouldSettle) {
          await tester.pumpAndSettle();
        } else {
          await tester.pump();
        }
      },
    );
  }
}
