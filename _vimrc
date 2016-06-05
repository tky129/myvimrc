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
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/neocomplcache'  " そのうちneocompleteに変えたい（要lua）
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
   \ 'default' : ''
   \ }
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup() "

NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
" Plugin key-mappings.
map <C-k>     <Plug>(neosnippet_expand_or_jump)
map <C-k>     <Plug>(neosnippet_expand_or_jump)
map <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif


call neobundle#end()
filetype plugin indent on

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
autocmd InsertEnter,InsertLeave * set cursorline! " 挿入モード時のみカーソル行をハイライト

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

" コマンド
command! Session source ~/.vim.session	" セッションを復元するコマンド
