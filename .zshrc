export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.atuin/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode disabled
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#c084fc"
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true
source $ZSH/oh-my-zsh.sh

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

alias code="code-insiders"
source ~/.quotes.sh

eval "$(atuin init zsh --disable-up-arrow)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# opencode
export PATH=/Users/ronniedelossantos/.opencode/bin:$PATH
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
alias ls='exa --icons --git'
alias l='exa -lbF --git --icons'
alias ll='exa -lbGF --git --icons'
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --icons'
alias tree='exa --tree --icons'
