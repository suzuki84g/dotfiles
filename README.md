# dotfiles

わたくしのdotfilesです。

## 手順

1. `dotfiles` を `git clone` する。
2. `ln -sv ~/dotfiles/.zshrc ~/` でシンボリックリンクを作成。
3. 読み込まれるようにする。

## エラー関連

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
