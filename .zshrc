# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# alias
alias cat="bat"
alias cubemx='open -n -a STM32CubeMX'
alias cubeprogrammer='open -n -a STM32CubeProgrammer'
alias eagle='open -n -a EAGLE'
alias ls="exa"
alias gcc="/usr/local/bin/gcc-8 -std=c99 -Wall -Wextra"
alias g++="/usr/local/bin/g++-8 -std=c++17 -Wall -Wextra -Wconversion -pedantic"
alias ssh='~/bin/ssh-change-profile.sh' # ssh-change-profile

# color
export CLICOLOR=1
export TERM=xterm-256color

# openjdk
export CPPFLAGS="-/usr/local/opt/openjdk/include"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# pyenv
eval "$(pyenv init -)"
export PATH="$PYENV_ROOT/shims:$PATH"
export PYENV_ROOT="$HOME/.pyenv"

# zlib
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz compinit && compinit

export PATH="/usr/local/bin:$PATH"

# profiling
if (which zprof > /dev/null 2>&1) ;then
    zprof
fi
