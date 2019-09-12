execute pathogen#infect()

" sidebar ruler
set number
set relativenumber

" remap leader
let mapleader = ","

" lightline
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'FilenameForLightline'
      \ }
      \ }
function! FilenameForLightline()
    return expand('%')
endfunction

" tab width
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2

" Syntax Highlighting
syntax on
filetype plugin indent on

" Nerd tree
autocmd vimenter * NERDTree
map <C-a> :NERDTreeToggle<CR>
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

" ALE
let g:ale_javascript_eslint_use_global = 1

" fzf
set rtp+=/usr/local/opt/fzf
nmap ; :Buffers<CR>
nmap <Leader>r :Tags<CR>
nnoremap <silent> <expr> <Leader>t (expand('%') =~ 'NERD_tree' ? "\<C-w>\<C-w>" : '').":Ag\<CR>"

" silver searcher
set grepprg=ag\ --nonumbers\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m
let g:ackprg = 'ag --nogroup --nocolor --column'

" Move windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_

" commenter
autocmd FileType apache setlocal commentstring=#\ %s

" No arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
