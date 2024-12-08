eval "$(rbenv init -)"
eval "$(direnv hook zsh)"
eval "$(zoxide init zsh)"
source $HOMEBREW_PREFIX/opt/zinit/zinit.zsh

# fzf history
function fzf-select-history() {
    BUFFER=$(history -n -r 1 | fzf --query "$LBUFFER" --reverse)
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N fzf-select-history
bindkey '^r' fzf-select-history

# zinit plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light sindresorhus/pure
zstyle :prompt:pure:path color '#ffff00'
zstyle :prompt:pure:git:branch color '#00aaff'

bindkey ";3C" forward-word
bindkey ";3D" backward-word

# git command alias
alias gb='git branch'
alias gl='git log'
alias glo='git log --oneline'
alias gf='git fetch'
alias gph='git push origin'
alias gpfh='git push -f origin'
alias gpl='git pull origin'
alias gcb='git checkout -b'
alias gs="git branch --list | cut -c 3- | fzf --preview \"git log --pretty=format:'%h %cd %s' --date=format:'%Y-%m-%d %H:%M' {}\" | xargs git switch"
alias gst='git stash'
alias gsta='git stash apply'
alias ga='git add .'
alias gm='git commit'
alias gd='git branch | grep -v "main\|develop\|release-candidate" | xargs git branch -D'
alias grs='git reset --soft'
alias grh='git reset --hard'
alias gc='git commit'
alias gcf='git commit --fixup'
alias gia='git rebase -i --autosquash'

# GitHub cli alias
alias ghbb='gh pr view --web'
alias ghb='gh browse'
alias ghp='gh pr create --web'
alias ghpl='gh pr list'
alias ghprs='gh requested-prs'

# others alias
alias ghqlist='cd $(ghq list -p | fzf)'
alias t='tig'
alias c='code .'
alias tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/| /g'"
alias n="nvim"
alias e="exit"
alias l='lazydocker'

#node
export PATH=$HOME/.nodebrew/current/bin:$PATH

# openssl
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export LIBRARY_PATH="$LIBRARY_PATH:/opt/homebrew/opt/openssl@1.1/lib/"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/opt/homebrew/opt/openssl@1.1"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"

#go
export GOPATH=$HOME/go
export PATH=$PATH:/opt/homebrew/opt/go

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

