#zmodload zsh/zprof && zprof

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="${PATH}:${HOME}/.robotech/bin"

export SDKROOT=$(xcrun --sdk macosx --show-sdk-path)

export XDG_CONFIG_HOME="${HOME}/.config"

# color
export CLICOLOR=1
export TERM=xterm-256color

# openjdk
export CPPFLAGS="-/usr/local/opt/openjdk/include"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# pyenv
pyenv() {
    unset -f pyenv
    eval "$(command pyenv init - --no-rehash)"
    pyenv $@
}
export PATH="$PYENV_ROOT/shims:$PATH"
export PYENV_ROOT="$HOME/.pyenv"

# zlib
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
