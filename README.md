Agdaの勉強
===

## 公式サイト

https://wiki.portal.chalmers.se/agda/pmwiki.php

## 1. インストール方法(Ubuntu)

1. [Haskell Platform](https://www.haskell.org/platform/#linux-ubuntu)をインストール
2. [公式サイトの手順](https://agda.readthedocs.io/en/latest/getting-started/installation.html)でインストール

私は以下のようにインストールした。

```
$ sudo apt install emacs
$ sudo apt install haskell-platform
$ cabal update
$ cabal install Agda
$ agda-mode setup
```
[emacsの設定](/.emacs.d)

## 2. 操作方法

- `test.agda`というファイルを作り、いろいろ書く
- `M-x agda-input-show-translations` で記号の入力方法を調べる
- `C-c C-n`で`Expression: `というプロンプトが出るのでそこに評価したい式を入力する

## なんかstdlibでエラーが出る

後で以下を見てみる。

https://github.com/krtx/agda-handson/blob/master/install-stdlib.sh
https://agda.readthedocs.io/en/latest/tools/package-system.html
https://github.com/agda/agda/issues/2398
