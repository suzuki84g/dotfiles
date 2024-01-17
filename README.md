# dotfiles

## 概要

```console
% tree -a --dirsfirst --filelimit 10
.
├── .git  [14 entries exceeds filelimit, not opening dir]
├── homebrew  # homebrewのバックアップ
│   ├── .Brewfile
│   ├── leaves.txt
│   └── list-cask.txt
├── zsh
│   ├── alias.zsh  # aliasのまとめ
│   └── path.zsh  # pathはここに書く
├── .DS_Store
├── .gitignore
├── .zshrc  # 基本設定
└── README.md  # これ

4 directories, 9 files
```

## 手順

### 1. git clone

```console
git clone git@github.com:suzuki84g/dotfiles.git ~/dotfiles
```

### 2. シンボリックリンクの作成

```console
ln -sv ~/dotfiles/.zshrc ~/
```

## homebrew

### 出力

```console
brew leaves > $SCRIPT_DIR/homebrew/leaves.txt
brew list --cask -1 > $SCRIPT_DIR/homebrew/list-cask.txt
```

### バックアップ

<https://docs.brew.sh/Manpage>

```console
# バックアップ作成
brew bundle dump --file="$SCRIPT_DIR/homebrew/.Brewfile" --force
# 復元
brew bundle --file="$SCRIPT_DIR/homebrew/.Brewfile"
```

## エラー関連

### anyenv

- anyenv（通ってないpath？）があるとエラーになる。
  - anyenvを入れたらまるっと消えた。

### 設定の場所

`zshenv > zprofile > zshrc > zlogin`

- global
  - `/etc/zshrc`
  - `/etc/zprofile`
- private: `~/dotfiles`

### よく使うコマンド

`echo $PATH | tr ':' '\n'`
