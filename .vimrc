set nocompatible
set autoindent
set tabstop=4
set softtabstop=4 " Delete four spaces with one backspace
set shiftwidth=4
set ignorecase
set bs=2
set expandtab
" Do not expand tabs with makefiles
autocmd FileType make set noexpandtab

set background=dark
set hidden
set fileencoding=utf-8

" Highlight current line when in insert mode
autocmd InsertEnter,InsertLeave * set cul!

" Monokai colour scheme https://github.com/phanviet/vim-monokai-pro
"set termguicolors
colorscheme monokai_pro

" TAB autocomplete
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

" Keep cursor centred
set so=100

" Sessions useful options
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

" Scroll through buffers with ctrl-n, ctrl-p
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Pathogen package manager
execute pathogen#infect()

" Syntastic settings (recommended)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" My syntastic settings
let g:syntastic_perl_checkers = ['perl']
let g:syntastic_enable_perl_checker = 1
