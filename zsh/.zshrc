# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Zsh theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/magnus.sillen/.bun/_bun" ] && source "/Users/magnus.sillen/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Use ssh passphrase from keychain
ssh-add --apple-use-keychain --apple-load-keychain ~/.ssh/id_ed25519

# Aliases
alias start="npm start"
alias dev="npm run dev"
alias test="npm run test"
alias db="npm run db"
alias tsc="npm run tsc"
alias gitd="git difftool --tool=vimdiff"

# Brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv (Python)
# eval "$(pyenv init -i)"
# eval "$(pyenv init --path)"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export JAVA_HOME=/opt/homebrew/opt/openjdk@11/

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Flutter
export PATH=$HOME/development/flutter/bin:$PATH

# CocoaPods
export PATH=$HOME/.gem/bin:$PATH

# Tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"

export EDITOR=nvim

# Suppress warning about instant promt.
# Zsh will start quickly but prompt will jump down after initialization.
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
