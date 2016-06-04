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
 	
call neobundle#end()
filetype plugin indent on

" キーバインド
inoremap <C-o> <ESC>
