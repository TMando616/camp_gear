import 'package:material_ui/material_ui.dart';

/// 仮のホーム画面。ステップ3以降で「キャンプ」タブに置き換える
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('キャンプギア')),
    );
  }
}
