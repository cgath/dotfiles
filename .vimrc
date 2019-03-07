" If vim-plug is not installed then do so
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
" Remember to call :PlugInstall when adding new ones
call plug#begin('~/.vim/plugs')

Plug 'metakirby5/codi.vim'
Plug 'chriskempson/base16-vim'
Plug 'SkyLeach/pudb.vim'

call plug#end()

set termguicolors " Terminal colors
set number " Line numbers
set ruler " Show coordinates in lower right

" I prefer to split right and below
set splitright
set splitbelow

" Colorscheme
colorscheme base16-tomorrow-night

" Key maps
tnoremap <Esc> <C-\><C-n>



