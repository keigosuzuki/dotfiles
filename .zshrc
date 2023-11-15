# alias
alias cat="bat"
alias eagle='open -n -a EAGLE'
alias kicad='open -n -a KiCad'
alias ls="exa"
alias gcc="/usr/local/bin/gcc-13 -std=c99 -Wall -Wextra"
alias g++="/usr/local/bin/g++-13 -std=c++17 -Wall -Wextra -Wconversion -pedantic"
alias clang="clang -std=c99 -Wall -Wextra"
alias clang++="clang++ -std=c++17 -Wall -Wextra -Wconversion"

_compinit() {
    local re_initialize=0
    for match in ${ZDOTDIR}/.zcompdump*(.Nmh+24); do
        re_initialize=1
        break
    done

    autoload -Uz compinit
    if [ "$re_initialize" -eq "1" ]; then
        compinit
        # update the timestamp on compdump file
        compdump
    else
        # omit the check for new functions since we updated today
        compinit -C
    fi
}
_compinit

# profiling
#if (which zprof > /dev/null 2>&1) ;then
#zprof
#fi

export PATH=$HOME/.progate/bin:$PATH
export PATH="/usr/local/mysql-8.1.0-macos13-x86_64/bin:$PATH"  

export IS_SIM=ON
export CPLUS_INCLUDE_PATH=/usr/local/include:$CPLUS_INCLUDE_PATH
export CPPYGEN_LIBCLANG_PATH=/usr/local/opt/llvm/lib/libclang.dylib
export CC=/usr/local/opt/llvm/bin/clang
export CXX=/usr/local/opt/llvm/bin/clang++
