# Warikan App（割り勘アプリ）

Rails + PostgreSQL + Docker を使ったシンプルな割り勘計算アプリです。

---

## 機能概要

- 金額と人数を入力して割り勘計算
- 1人あたりの支払い金額を自動計算
- 入力値のバリデーション（Modelで管理）
- 履歴の保存・一覧表示
- flashメッセージによる通知表示（notice / alert）

---

## 使用技術

- Ruby 3.3
- Rails 8
- PostgreSQL
- Docker / Docker Compose
- Puma

---

## セットアップ

### 1. リポジトリ取得

```bash
git clone <repository-url>
cd warikan_app
