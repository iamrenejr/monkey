execute pathogen#infect()
call plug#begin('/Users/renecalunsag/.vim/pack/my-plugins/start')

" vim-plug plugins START
Plug 'HerringtonDarkholme/yats.vim'
"Plug 'maxmellon/vim-jsx-pretty'
"Plug 'pangloss/vim-javascript'
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
" vim-plug plugins END

" coc.nvim
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
	let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
	let g:coc_global_extensions += ['coc-eslint']
endif

" sidebar ruler
set number
set relativenumber

" encoding
set encoding=UTF-8

" Disable -- INSERT --
set noshowmode

let base16colorspace=256  " Access colors present in 256 colorspace

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
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ],
      \ },
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
set re=0
filetype plugin indent on

" Nerd tree
" autocmd vimenter * NERDTree
map <C-a> :NERDTreeToggle<CR>
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

" Customize colors
highlight CocErrorFloat ctermfg=White guifg=#ffffff

" ALE

" fzf
set rtp+=/usr/local/opt/fzf
nmap ; :Buffers<CR>
nmap <Leader>r :Tags<CR>
nnoremap <silent> <expr> <Leader>t (expand('%') =~ 'NERD_tree' ? "\<C-w>\<C-w>" : '').":Ag\<CR>"

" silver searcher
set grepprg=ag\ --nonumbers\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m
let g:ackprg = 'ag --nogroup --nocolor --column'

" Jump between errors
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Move windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_

" commenter
autocmd FileType apache setlocal commentstring=#\ %s

" YouCompleteMe and CoC.nvim dropdown color
highlight Pmenu ctermbg=blue guibg=blue ctermfg=white guifg=white
highlight PmenuSel ctermbg=white guibg=white ctermfg=black guifg=black
highlight Conceal ctermbg=red guibg=red ctermfg=white guifg=white

" vim-prettier
let g:prettier#exec_cmd_async = 1
let g:prettier#config#single_quote = '--no-single-quote'
let g:prettier#config#use_tabs = 'true'

" No arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Tabs
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tn :tabnew<CR>
nnoremap tm :tabm<Space>
nnoremap tc :tabclose<CR>

" Terminal
noremap <Leader>\t :below vertical terminal<CR>

" vim-dadbod-ui
autocmd FileType dbui nmap <Leader>s <Plug>(DBUI_SaveQuery)

call plug#end()
