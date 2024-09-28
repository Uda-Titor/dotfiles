eval "$(rbenv init -)"
eval "$(direnv hook zsh)"
eval "$(zoxide init zsh)"
source $HOMEBREW_PREFIX/opt/zinit/zinit.zsh

# zinit plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light mollifier/anyframe
zinit light sindresorhus/pure
zinit light olets/zsh-abbr
zstyle :prompt:pure:path color '#ffff00'

bindkey '^r' anyframe-widget-execute-history
bindkey '^b' anyframe-widget-checkout-git-branch

# git command abbr
abbr gb='git branch'
abbr gl='git log'
abbr glo='git log --oneline'
abbr gf='git fetch'
abbr gph='git push origin'
abbr gpfh='git push -f origin'
abbr gpl='git pull origin'
abbr gcb='git checkout -b'
abbr gs='git switch'
abbr gst='git stash'
abbr gsta='git stash apply'
abbr ga='git add .'
abbr gm='git commit'
abbr gd='git branch | grep -v "main\|develop\|release-candidate" | xargs git branch -D'
abbr grs='git reset --soft'
abbr grh='git reset --hard'
abbr gc='git commit'
abbr gc='git commit --fixup'
abbr gia='git rebase -i --autosquash'

# GitHub cli abbr
abbr ghbb='gh pr view --web'
abbr ghb='gh browse'
abbr ghp='gh pr create --web'
abbr ghpl='gh pr list'
abbr ghprs='gh requested-prs'

# others abbr
abbr ghqlist='cd $(ghq list -p | peco)'
abbr t='tig'
abbr c='code .'
abbr tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/| /g'"
abbr n="nvim"
abbr e="exit"
abbr l='lazydocker'
abbr db='gobang'

#node
export PATH=$HOME/.nodebrew/current/bin:$PATH

# openssl
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export LIBRARY_PATH="$LIBRARY_PATH:/opt/homebrew/opt/openssl@1.1/lib/"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/opt/homebrew/opt/openssl@1.1"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"

#go
export GOPATH=$HOME/go

# その他
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"
