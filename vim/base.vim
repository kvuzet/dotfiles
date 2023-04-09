" Pathogen for plugins, etc
execute pathogen#infect()

" Forget compatibility with vi
set nocompatible

let mapleader = ","
let g:mapleader = ","

"Enable filetypes
filetype on
filetype plugin on
filetype indent on

syntax enable
se t_Co=256
set termguicolors
colorscheme night-owl
set encoding=utf-8 " Necessary to show Unicode glyphs

" Write the old file out when switching between files.
set autowrite

" Display current cursor position in lower right corner.
set ruler

"Ever notice a slight lag after typing the leader key + command? This lowers
"the timeout.
set timeoutlen=500

" Down is really the next line
nnoremap j gj
nnoremap k gk

" Switch between buffers without saving
set hidden
set clipboard=unnamed
" Tab stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Show command in bottom right portion of the screen
set showcmd

"Show lines numbers
set number

"Indent stuff
set autoindent
let g:html_indent_style1 = "auto"

"Always show the status line
set laststatus=2

"Prefer a slightly higher line height
set linespace=3

"Better line wrapping
set wrap
set textwidth=79
set formatoptions=qrn1

"Allow backspace over everything in insert mode.
set backspace=indent,eol,start

"Set incremental searching"
set incsearch

"Highlight searching
set hlsearch

"Hide mouse when typing
set mousehide

" Correct mouse highlighting
set mouse=a
set ttymouse=sgr

" session settings
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help

"Saves time; maps the spacebar to colon
nmap <space> :

"Automatically change current directory to that of the file in the buffer
" autocmd BufEnter * cd %:p:h

"Map escape key to jj -- much faster
imap jj <esc>

" Source the vimrc file after saving it. This way, you don't have to reload Vim to see the changes.
if has("autocmd")
 augroup myvimrchooks
  au!
  autocmd bufwritepost ++nested .vimrc source ~/.vimrc
 augroup END
endif
" autocmd! bufwritepost ++nested .vimrc source %

" easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" auto save when focus is lost
" au FocusLost * :wa ++nested

" show matching brackets
set showmatch

" nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" Use f2 to toggle paste mode
set pastetoggle=<F2>

" different cursor for insert mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"More natural splitting
set splitbelow
set splitright

"===============PLUGIN SETTINGS=============="

"EMMET

" let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

"===========NERDTREE==============="

"Ctrl-B for nerdtree toggle
nmap <leader>b :NERDTreeToggle<cr>

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

" Have NERDTree ignore vim swap files
let NERDTreeIgnore = ['\.swp$']

" quick shortcut for nerdtreefind
nmap ,n :NERDTreeFind<CR>


"======TCOMMENT======"
"Faster shortcut for commenting. Requires T-Comment plugin
map <leader>c <c-_><c-_>

"========FZF========"
nnoremap <c-p> :Files<CR>
nnoremap <c-o> :Rg<CR>

"========Ack========"
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

"======Dispatch====="
nnoremap <Leader>d :Dispatch<Space>

"=====Ale=====
let g:ale_lint_on_text_changed = 1
let g:ale_linters = {
      \ 'ruby': ['standardrb', 'rubocop'],
      \ 'javascript': ['prettier', 'eslint']
      \}
let g:ale_fixers = {
      \ 'ruby': ['standardrb'],
      \ 'javascript': ['eslint'],
      \}

" Fix files automatically on save
let g:ale_fix_on_save = 1

let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'



