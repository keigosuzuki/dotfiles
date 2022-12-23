# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr  '%F{magenta}'
zstyle ':vcs_info:git:*' unstagedstr '%F{yellow}+'
zstyle ':vcs_info:*' formats '%F{cyan}%c%u[%b]%f'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
PROMPT='%F{green}%~%f%F{cyan}$vcs_info_msg_0_%f%F{yellow}%%%f '
alias g++="/usr/local/bin/g++-8 -std=c++17 -Wall -Wextra -Wconversion -pedantic"
alias gcc="/usr/local/bin/gcc-8 -std=c99 -Wall -Wextra"
alias eagle='open -n -a EAGLE'
alias cubemx='open -n -a STM32CubeMX'
alias cubeprogrammer='open -n -a STM32CubeProgrammer'
export CLICOLOR=1
export TERM=xterm-256color

export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-/usr/local/opt/openjdk/include"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init -)"

export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

export DISPLAY=localhost:0
LIBGL_ALWAYS_INDIRECT=0
export GAZEBO_IP=127.0.0.1

#eval "$(starship init zsh)"

alias ls="exa"
alias cat="bat"
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U compinit
compinit

# ssh-change-profile
alias ssh='~/bin/ssh-change-profile.sh'

export PATH="/usr/local/bin:$PATH"
