### 1. Homebrewをインストールする

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. .dotfilesをインストールする

```zsh
git clone git@github.com:Uda-Titor/dotfiles.git
```
### 3. ライブラリ、デスクトップアプリをインストールする

```zsh
zsh install.sh
```

### 4. シンボリックリンクをGNU Stowで作成する

```zsh
stow -v config git zsh
```

### 5. macの設定を変更する

```zsh
zsh set-up-mac.sh
```

### 6. ghコマンドの拡張機能を入れる

```zsh
gh extension install dlvhdr/gh-dash
```
