" Neobundleの定義
set nocompatible
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'anekos/felis-cat-igirisu-toast-express'

call neobundle#end()
filetype plugin indent on

" 環境設定系
syntax on 				" シンタックスハイライト
set clipboard+=unnamed	" OSのクリップボードを共有
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8	" 文字コード自動認識
set number				" 行番号表示
set tabstop=4			" タブ幅 = 4
set virtualedit=all		" 文字のないところにカーソル移動可能
set incsearch			" インクリメンタルサーチを行う
set display=lastline	" 一行が長い場合も最後まで表示
set showmatch			" 対応するカッコに一瞬飛ぶ
set matchtime=1			" 対応するカッコへのジャンプは0.1 * 1秒だけ

" キーバインド
inoremap <C-o> <ESC>
nnoremap + <C-a>		" 数値+ 1 のキーマップ
nnoremap - <C-x>		" 数値- 1 のキーマップ

" gtags 用キーバインド
map <C-g> :Gtags 
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>
