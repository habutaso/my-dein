set fenc=utf-8
"バックアップファイルを作らない
set nobackup
""スワップファイルを作らない
set noswapfile
"入力中のコマンドをステータスに表示
set showcmd
"
"" カーソルの位置 
set ruler
set number
" 80文字ラインマーカ
" let &colorcolumn=join(range(81,999),",")
" hi ColorColumn ctermbg=235


" ビープ設定
set visualbell t_vb=
set noerrorbells


" 検索結果を可視化
set showmatch
set laststatus=2


" 色関係
syntax enable
set t_Co=256
set termguicolors


" インデント設定
set autoindent
set tabstop=4
set shiftwidth=4


" 空白文字関係
" set list
" set listchars=trail:∎,tab:>-,nbsp:%

" 検索関係
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch


" 自動補完
inoremap [ []<LEFT>
inoremap { {}<LEFT>
" inoremap {<CR> {}<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

nnoremap <C-c> :sp<CR>:terminal<CR>
nnoremap <C-k><C-c> :vs<CR>:terminal<CR>

" neovim ターミナル移動
tnoremap <silent> <ESC> <C-\><C-n>
tnoremap <silent> <C-w><C-w> <C-\><C-n><C-w><C-w>

" go設定
autocmd BufRead,BufNewFile *.go set noexpandtab
autocmd BufRead,BufNewFile *.go nnoremap <C-b> :GoImports<CR>:GoRun %<CR>
autocmd BufRead,BufNewFile *.go nnoremap <F4> :GoImports<CR>


" python設定
autocmd BufRead,BufNewFile *.py set expandtab
autocmd BufRead,BufNewFile *.py set tabstop=4
autocmd BufRead,BufNewFile *.py set shiftwidth=4
autocmd BufRead,BufNewFile *.py nnoremap <C-b> :w<CR>:!python3 %<CR>


" node.js設定
autocmd BufRead,BufNewFile *.js set expandtab
autocmd BufRead,BufNewFile *.js set tabstop=2
autocmd BufRead,BufNewFile *.js set shiftwidth=2
autocmd BufRead,BufNewFile *.js nnoremap <C-b> :w<CR>:!node %<CR>


" c言語設定
autocmd BufRead,BufNewFile *.c set noexpandtab
