execute pathogen#infect()

" sidebar ruler
set number
set relativenumber

" encoding
set encoding=UTF-8

" Disable -- INSERT --
set noshowmode

" Enable true color 启用终端24位色
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

" markdown preview
let vim_markdown_preview_github=1

" autocompletion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" remap leader
let mapleader = ","

" lightline
set laststatus=2
let g:lightline = {
			\ 'colorscheme': 'seoul256',
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

" YouCompleteMe dropdown color
highlight Pmenu ctermbg=gray guibg=gray

" vim-prettier
let g:prettier#exec_cmd_async = 1
let g:prettier#config#single_quote = 'true'

" No arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
