set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bronson/vim-trailing-whitespace'

call vundle#end()            " required
filetype plugin indent on    " required
Bundle 'wakatime/vim-wakatime'


"-------------------------
" Start NerdTree Settings.
" ------------------------
"  隠しファイルを表示する
let NERDTreeShowHidden = 1
" Ctrl + e でNERDTreeを開く
nnoremap <silent><C-e> :NERDTreeToggle<CR>
"-----------------------
" End NerdTree Settings.
" ----------------------

" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1
"内容が変更されたら自動的に再読み込み
set autoread
" Backspaceがきかないことがある
set backspace=indent,eol,start
" 行番号の設定
set number
"カラースキーマを設定
colorscheme molokai
set t_Co=256

set expandtab
set tabstop=4
set shiftwidth=2
set softtabstop=2
set autoindent

" 不可視文字を表示する
set list
"検索に大文字を含んでいたら大小区別
set smartcase
" 検索時にヒット部位の色を変更
set hlsearch
" 検索時にインクリメンタルサーチを行う
set incsearch
"対応するカッコのハイライトを表示
set showmatch
set showmode
" シンタックスハイライトを有効にする
syntax on
" バックアップファイルを作らない
set nobackup
" Swapファイルを作成しない
set noswapfile

set undodir=D:/tmp/vim/undo
set encoding=utf-8
" ファイル名の表示
set notitle
" ルーラーを表示
set ruler
set ignorecase

set visualbell
set noerrorbells

" コメントの色を変更
hi Comment ctermfg=red

" コマンドラインモードえ<Tab>キーによるファイル名補完を有効にする
set wildmenu
let g:molokai_original = 1
" 暗い背景色に合わせた配色にする
set background=dark
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace / __/ "全角スペースの表示

autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl expandtab tabstop=4 shiftwidth=4 softtabstop=4

autocmd FileType ruby setl smartindent cinwords=if,elsif,else,for,while,def,class
autocmd FileType ruby setl expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType ruby setl autoindent

