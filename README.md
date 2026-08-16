# my-page

Cloudflare Workers の静的アセット配信で公開している自己紹介ページ。

## 構成

```
my-page/
├── public/                   # このディレクトリが丸ごと配信される
│   ├── index.html
│   ├── style.css
│   ├── 404.html
│   ├── favicon.svg
│   ├── avatar.jpg            # fetch-assets.sh で取得
│   ├── fonts/                # 同上
│   └── icons/                # 同上
├── scripts/fetch-assets.sh   # フォント・ロゴ・アバターの取得
├── wrangler.jsonc
└── package.json
```

Worker スクリプトは無し。`wrangler.jsonc` の `assets.directory` だけを指定した
アセット専用 Worker として動く。

## セットアップ

```bash
npm install
npm run assets
```

## ローカル確認

```bash
npm run dev
```

## デプロイ

```bash
npm run deploy
```

## クレジット

- フォント: [Geist](https://vercel.com/font) (SIL Open Font License)
- ブランドロゴ: [Simple Icons](https://simpleicons.org/) (CC0)
- UIアイコン: [Tabler Icons](https://tabler.io/icons) (MIT)
