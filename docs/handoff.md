# ハンドオフ資料：キャンプギア管理アプリ（仮称）

最終更新: 2026-11-22

## 現在地

- 実装ステップ1（プロジェクト作成）が完了。Riverpod・go_router を入れ、仮のホーム画面が出るところまで
- バンドルID / applicationId：`com.tmando616.campgear`（Android の Kotlin パッケージも合わせた）
- `flutter analyze` 指摘なし、`flutter test` 1件通過

## 次のタスク

- ステップ2：Firebaseの準備。本人がまだ `firebase login` をしていないので、それまでは `demo-` で始まるプロジェクトIDでエミュレーターだけ動かす（demo プロジェクトはログイン不要）
- `flutterfire configure` と本物の Firebase プロジェクトの作成は、ログイン後に行う

## 本人に確認すること

- 下部タブの構成：仕様書は「3画面」とあるが、並んでいるのは「キャンプ」「持ち物リスト（キャンプを開いた画面）」「ギア」。タブにするのは「キャンプ」と「ギア」の2つで、持ち物リストはキャンプから開く画面、という読み方でよいか
- Appleでサインイン：有料の Apple Developer Program に入るまで使えない。開発中は Google ログインだけで進めるか
- Android SDK が未導入（Android Studio が必要）。当面は iOS だけで確認する
