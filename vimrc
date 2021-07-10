call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'hugolgst/vimsence'
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
call plug#end()

syntax on
colo pablo

let g:go_gopls_enabled = 1
set autowrite
let g:go_auto_type_info = 1

autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4

set splitbelow
autocmd VimEnter * NERDTree
hi NERDTreeDir guifg=#04a03d guibg=#041404 gui=NONE
autocmd VimEnter * wincmd p
autocmd VimEnter * terminal
autocmd VimEnter * wincmd k
autocmd VimEnter * 8 wincmd +

unlet! skip_defaults_vim 
source $VIMRUNTIME/defaults.vim
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'
