### 1. Homebrewをインストールする

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. .dotfilesをクローンする

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
