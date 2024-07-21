### 1. Homebrewをインストールする

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. ライブラリ、デスクトップアプリをインストールする

```zsh
zsh install.sh
```

### 3. シンボリックリンクをGNU Stowで作成する

```zsh
stow -v config git zsh
```
