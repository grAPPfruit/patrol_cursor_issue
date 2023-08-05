import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:patrol/patrol.dart';
import 'package:patrol_cursor_issue/app/app.dart';

import '../common/test_utils.dart';

void main() {
  testGoldens('Open Pin Page', (tester) async {
    await loadAppFonts();
    final $ = tester.toPatrolTester();

    await tester.pumpWidget(const App());
    await tester.captureGolden(name: '1 Home Page', shouldSettle: true);

    // will only work if cursor is disabled or if shouldSettle is false
    await $('launch pin page').tap();
    await tester.captureGolden(
      name: '2 Pin Page',
      shouldSettle: true, // TODO: set to false to make test pass
    );
  });
}

extension on WidgetTester {
  PatrolTester toPatrolTester() {
    return PatrolTester(
      tester: this,
      nativeAutomator: null,
      config: const PatrolTesterConfig(settlePolicy: SettlePolicy.trySettle),
    );
  }
}
