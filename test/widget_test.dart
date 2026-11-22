import 'package:camp_gear/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('起動するとホーム画面が出る', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: CampGearApp()));
    await tester.pumpAndSettle();
    expect(find.text('キャンプギア'), findsOneWidget);
  });
}
