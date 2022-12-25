vim9script

syntax enable # シンタックスハイライト
colorscheme seoul256

# options
set autoindent # 改行時インデント保持
set expandtab # タブで空白挿入
set shiftwidth=4
set softtabstop=4
set tabstop=4

set autoread # 外部変更を自動読み込み
set noswapfile
set ttimeoutlen=50 # ノーマルモード切り替え時の遅延低減

set backspace=indent,eol,start # バックスペースの働く対象
set clipboard+=unnamed # クリップボード有効化
set hidden # バッファ切り替え時の警告を無効化

set cursorline # 現在の行をハイライト
set nowrap # 折り返し表示をしない
set number # 行番号表示
set showcmd # コマンド表示
set title # ファイル名表示

set hlsearch # 検索結果を強調表示
set incsearch # 検索リアルタイム表示
set smartcase # 検索で大文字小文字を区別しない

# background color
highlight EndOfBuffer ctermbg=none
highlight Folded ctermbg=none
highlight LineNr ctermbg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none

set mouse=a # マウス有効化
set scrolloff=8 # スクロール時余分に行表示
set whichwrap=b,s,h,l,<,>,[,] # 行を跨いだ移動

# key map
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>

# plugin
plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree', { 'on': [] }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons', { 'on': [] }
# coc.nvim
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nmap <silent> gd <Plug>(coc-definition)
# airline
g:airline#extensions#tabline#enabled = 1
g:airline_powerline_fonts = 1
g:airline_theme = 'wombat'
# nerdtree
map <C-n> :NERDTreeToggle<CR>
plug#end()

def Load_plug(timer: any)
    plug#load(
        'nerdtree',
        'vim-devicons',
    )
enddef
timer_start(500, Load_plug)

# clang_format
def Clang_format()
    now_line = line(".")
    exec ":%! ~/.clang-format"
    exec "." .now_line
enddef

if executable("~/.clang-format")
    augroup cpp_clang_format
        autocmd!
        autocmd Bufwrite,FileWritePre,FileAppendPre *.[ch]pp Clang_format()
    augroup END
endif