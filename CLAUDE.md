# camp_gear

持っているキャンプギアを家族で共有し、登録したギアから毎回の持ち物チェックリストを作るアプリ。Flutter製（iOS・Android）。アプリ名は未決（「キャンプギア」は仮称）。

仕様・決定事項・実装ステップは **docs/spec.md** にまとめてある。作業を始める前に必ず読むこと。進み具合と次のタスクは **docs/handoff.md** に書く。

## よく使うコマンド

```bash
xcrun simctl boot E429B161-CAA4-424E-9197-0732F1CE1036 && open -a DeviceHub
flutter analyze
flutter test
flutter run -d E429B161-CAA4-424E-9197-0732F1CE1036
```

## 構成

- 状態管理は Riverpod（`flutter_riverpod`）、画面遷移は go_router。ルートの定義は `lib/app/router.dart`
- バンドルID / applicationId は `com.tmando616.campgear`（全アプリ共通の頭は `com.tmando616`。公開後は変えられない）
- データは Firebase（Firestore・Cloud Storage・Authentication）。開発中は Firebase Local Emulator Suite を使う

## 守ること

- importは`package:material_ui/material_ui.dart`（このFlutterバージョンのテンプレートに合わせる）
- データはすべて `households/{id}` の下に置き、権限は「ログイン中のユーザーがその家族のメンバーか」で判定する（docs/spec.md「データ構造」）
- セキュリティルールを変えたら、エミュレーターでのルールのテストも足す
- 開発中は本番の Firebase に書き込まない。広告は必ずテスト用の広告IDを使う
- 未決事項（docs/spec.md の「未決事項」）は勝手に決めず、本人に確認する
- 修正のたびに `flutter analyze`・`flutter test` を通してからコミットする
- 説明は簡潔に、「なぜそうするか」をセットで。Laravelにたとえると伝わりやすい

## 個人情報

ログイン・家族の招待・写真を扱うので、プライバシーポリシー・アカウント削除（App Store審査で必須）・Google Play のデータセーフティ欄を公開前に揃える。
