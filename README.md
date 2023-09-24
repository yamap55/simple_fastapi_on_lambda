# Simple FastApi on lambda

本リポジトリはシンプルな FastApi アプリケーションを AWS Lambda で動作させるためのリポジトリです

## 環境詳細

- Python : 3.11
- FastApi
- Uvicorn
  - ASGI準拠のアプリケーションサーバー
- Mangum

### 開発手順

1. VS Code 起動
2. 左下のアイコンクリック
3. 「Dev Containers: Reopen in Container」クリック
4. しばらく待つ
   - 初回の場合コンテナー image の取得や作成が行われる
5. 起動したら開発可能

## ローカル環境で起動

```shell
cd /project/api/
uvicorn main:app
```

## Lambdaで動作させる

- GitHub Actionsの `buildLambdaModule` でLambdaにアップロード可能なモジュールが作成される
- Lambadaに出力されたzipファイルをアップロードする
- API Gatewayの設定をする

refs. https://makolab.dev/fastapi-on-lambda/
