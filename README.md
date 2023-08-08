# dotfiles

わたくしのdotfilesです。

## 構成

```console
dotfiles/
├── .gitignore
├── .zshrc  <- 基本設定
├── README.md  <- これ
└── zsh  <- `.zshrc` が読み込む
    ├── alias.zsh  <- aliasのまとめ
    └── path.zsh  <- pathはここに書く
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
