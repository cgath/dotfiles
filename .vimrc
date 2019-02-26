" Default settings
set number
set ruler
set termguicolors

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

call plug#end()

" Colorscheme
colorscheme base16-tomorrow-night

" Key maps
tnoremap <Esc> <C-\><C-n>



