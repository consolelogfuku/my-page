#!/usr/bin/env bash
# 外部から持ってくるアセット（フォント / ブランドロゴ / アバター）をローカルに取得する。
# セルフホストすることで、閲覧者のブラウザから第三者CDNへのリクエストが発生しなくなる。
set -euo pipefail

cd "$(dirname "$0")/.."
mkdir -p public/fonts public/icons

# --- フォント: Geist Variable (SIL Open Font License) ---
curl -fsSL -o public/fonts/Geist-Variable.woff2 \
  https://unpkg.com/geist@latest/dist/fonts/geist-sans/Geist-Variable.woff2

# --- ブランドロゴ: Simple Icons (CC0) ---
# CSS の mask で単色化するので、色は何でもよい（ここでは黒で取得）
curl -fsSL -o public/icons/hatena.svg https://cdn.simpleicons.org/hatenabookmark/000000
curl -fsSL -o public/icons/qiita.svg  https://cdn.simpleicons.org/qiita/000000
curl -fsSL -o public/icons/zenn.svg   https://cdn.simpleicons.org/zenn/000000
curl -fsSL -o public/icons/github.svg https://cdn.simpleicons.org/github/000000
curl -fsSL -o public/icons/x.svg      https://cdn.simpleicons.org/x/000000

# --- UIアイコン: Tabler Icons (MIT) ---
curl -fsSL -o public/icons/arrow-up-right.svg \
  https://cdn.jsdelivr.net/npm/@tabler/icons@latest/icons/outline/arrow-up-right.svg

# 舞い落ちる葉のシルエット（小さく表示するので塗りつぶしの方を使う）
curl -fsSL -o public/icons/leaf.svg \
  https://cdn.jsdelivr.net/npm/@tabler/icons@latest/icons/filled/leaf.svg

# --- アバター: GitHub のプロフィール画像 ---
# 自前の写真に差し替える場合は public/avatar.jpg を上書きする
curl -fsSL -o public/avatar.jpg https://github.com/consolelogfuku.png

echo "アセットの取得が完了しました。"
