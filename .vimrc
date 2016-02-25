syntax on
set mouse=a
set guiheadroom=0

set nocompatible              " be iMproved, required
filetype off                  " required
" configuration plugin
set rtp+=~/.vim/bundle/Vundle.vim "setup runtime path to inclue Vundle
call vundle#begin()
Plugin 'Chiel92/vim-autoformat'
Plugin 'Lokaltog/powerline'     "python powerline
Plugin 'klen/python-mode'
Plugin  'vim-scripts/Efficient-python-folding'
                                " install vim +PluginInstall +qall
call vundle#end()               " required
filetype plugin indent on       " required

"MYCONFIG
inoremap <C-w> <esc>:wq<cr>a    "map key save 
nnoremap <C-w> :wq<cr>a

let mapleader = ","             "map leader key

set clipboard=unnamed           " normal copy paste

vnoremap <Leader>s :sort<CR>    "sort

vnoremap < <gv                  "better indentation
vnoremap > >gv                  "better indentation

set number " as IDE
set tw=97
set nowrap 
set fo-=t
set colorcolumn=80
"hightlight ColorColumn ctermbg=233

set tabstop=4       "tab for python
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

set laststatus=2            "powerline config
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

map <Leader>g :call RopeGotoDefinition()<CR> "python-mode
let repevim_enable_shortcuts =1
let g:pymode_rope_goto_def_newwim = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() #BREAKPOINT<C-c>

set completeopt=longest,menuone
function! OmmiPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction 



inoremap <C-F11> <esc>:! w python% <cr>a   "map key save 
nnoremap <C-F11> :! w python%<cr>a





"let g:formatterpath = ['/home/snakecc/Developement/python3gtk3']
