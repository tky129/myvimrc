set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/kaito/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/kaito/.vim/bundle')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/Unite.vim')
call dein#add('Shougo/vimfiler')
call dein#add('thinca/vim-quickrun')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" 環境設定系
syntax on 				" シンタックスハイライト
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8	" 文字コード自動認識
set number				" 行番号表示
set tabstop=4			" タブ幅 = 4
set shiftwidth=4		" 自動インデントでずれる幅 = 4
set virtualedit=all		" 文字のないところにカーソル移動可能
set incsearch			" インクリメンタルサーチを行う
set display=lastline	" 一行が長い場合も最後まで表示
set showmatch			" 対応するカッコに一瞬飛ぶ
set matchtime=1			" 対応するカッコへのジャンプは0.1 * 1秒だけ
au VimLeave * mks! ~/.vim.session	" 終了時にセッションを自動保存

set nocursorline " カーソル行を強調表示しない
autocmd InsertEnter,InsertLeave * set cursorline! "挿入モード時のみカーソル行をハイライト

" キーバインド
inoremap <C-o> <ESC>
nnoremap + <C-a>		" 数値+ 1 のキーマップ
nnoremap - <C-x>		" 数値- 1 のキーマップ

" gtags 用キーバインド
nmap <C-g> :Gtags -g
nmap <C-l> :Gtags -f %<CR>
nmap <C-j> :Gtags <C-r><C-w><CR>
nmap <C-k> :Gtags -r <C-r><C-w><CR>
nmap <C-n> :cn<CR>
nmap <C-p> :cp<CR>
