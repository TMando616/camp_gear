import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import 'app/router.dart';

void main() {
  // ProviderScope の中にアプリ全体を入れると、どの画面からでも Riverpod の状態を読める
  runApp(const ProviderScope(child: CampGearApp()));
}

class CampGearApp extends ConsumerWidget {
  const CampGearApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'キャンプギア', // 仮称。アプリ名は未決
      routerConfig: ref.watch(routerProvider),
    );
  }
}
