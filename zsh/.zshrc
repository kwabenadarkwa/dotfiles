# Ensure essential system directories are in PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Add Homebrew to PATH first
export PATH="/opt/homebrew/bin:$PATH"

eval "$(starship init zsh)"
starship preset jetpack -o ~/.config/starship.toml
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# bun completions
[ -s "/Users/kwabenadarkwa/.bun/_bun" ] && source "/Users/kwabenadarkwa/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#go stuff
export PATH=${HOME}/go/bin:$PATH

export MONO_HOME=/Library/Frameworks/Mono.framework/Versions/Current
export PATH=$PATH:$MONO_HOME/bin:$MONO_HOME/Commands



# for omnisharp
export PATH="$PATH:/Users/kwabenadarkwa/.local/share/nvim/mason/packages/omnisharp"

# dotnet SDK
export PATH=$PATH:/usr/local/share/dotnet
export DOTNET_ROOT="/opt/homebrew/opt/dotnet@8/libexec"
export PATH="/opt/homebrew/opt/dotnet@8/bin:$PATH"

alias ov='cd ~/Documents/Obsidian\ Vault/ && nvim'
alias n='nvim'
alias f='cd $(find ~/Documents ~/Downloads -type d | fzf -e)'
alias nvc='cd ~/.config/nvim/ && nvim'
alias love="/Applications/love.app/Contents/MacOS/love"
alias da-stage='ssh azureuser@48.217.64.244'

export PATH="~/.console-ninja/.bin:$PATH"


PATH=~/.console-ninja/.bin:$PATH
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.local/bin:$PATH"
eval "$(uv generate-shell-completion zsh)"

