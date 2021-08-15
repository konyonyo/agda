Agdaの勉強
===

## 公式サイト

https://wiki.portal.chalmers.se/agda/pmwiki.php

## 1. インストール方法(Ubuntu)

1. [Haskell Platform](https://www.haskell.org/platform/#linux-ubuntu)をインストール
2. [公式サイトの手順](https://agda.readthedocs.io/en/latest/getting-started/installation.html)でインストール
3. [標準ライブラリのInstallation instructions](https://github.com/agda/agda-stdlib/blob/master/notes/installation-guide.md)に従って標準ライブラリ(stdlib)をインストール
4. emacsの設定をする

私は以下のようにインストールした。Agdaのバージョンは2.6.2だった。

```
$ sudo apt install emacs
$ sudo apt install haskell-platform
$ cabal update
$ cabal install Agda
$ agda-mode setup
$ wget -O agda-stdlib.tar https://github.com/agda/agda-stdlib/archive/v1.7.tar.gz
$ tar xvf agda-stdlib.tar
$ cd $HERE/agda-stdlib-1.7
$ cabal install
$ cd ~
$ mkdir .agda
```

ファイル`$HOME/.agda/libraries`を作成し、ファイルに以下を記述した。

```
$HERE/agda-stdlib-1.7/standard-library.agda-lib
```

ファイル`$HOME/.agda/defaults`を作成し、ファイルに以下を記述した。

```
standard-library
```

[emacsの設定](/.emacs.d)

## 2. 操作方法

- `test.agda`というファイルを作り、いろいろ書く
- `M-x agda-input-show-translations` で記号の入力方法を調べる
- `C-c C-n`で`Expression: `というプロンプトが出るのでそこに評価したい式を入力する

# 3. Agdaの勉強

[Agda Tutorial](https://people.inf.elte.hu/divip/AgdaTutorial/Index.html)をやってみる。
