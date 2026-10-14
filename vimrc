" -----------------------------------------------------
"  Mapping keys for Fuzzy Finder
" -----------------------------------------------------
let mapleader = " "
" -----------------------------------------------------
"  Basic layout for my VIM
" -----------------------------------------------------
" Show relative line numbers
set relativenumber

" Optional: show absolute number for current line
set number

" Highlight matching brackets
set showmatch

" Enable syntax highlighting
syntax on

" Set tabs to 8 spaces, dont allow for spaces for the tab
set tabstop=8
set shiftwidth=8
set noexpandtab

" Enable auto-indenting
set smartindent

" Search settings
set hlsearch      " highlight search matches
set incsearch     " incremental search

" Prevent visual bell / flashing at top/bottom of buffer
set mouse=a           " optional if you use mouse
set noerrorbells
set novisualbell
set belloff=all       " disable all bell triggers
set visualbell        " some terminals respect this too
set t_vb=             " ensure no terminal flash

" Enable syntax highlighting
syntax on

" Set background (choose dark or light)
set background=dark
nnoremap <Leader>d :set background=dark<CR>
nnoremap <Leader>l :set background=light<CR>


" Use Gruvbox colorscheme

" -----------------------------------------------------
"  Fuzzy finder plugin
"  Make sure fzf is installed in order for this to work.
"  After installing fzf, you do :PlugInstall
" -----------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme gruvbox

" Shortcut to open fuzzy finder
" nnoremap <C-p> :Files<CR>
" Press <Leader><Leader> instead
nnoremap <Leader><Leader> :Files<CR>

" Fuzzy grep to find words with <Leader>f
nnoremap <Leader>f :Rg<CR>


" clear highlights when pressing esc two times
nnoremap <Esc><Esc> :nohlsearch<CR>

" syntac highlighting on
syntax on
filetype plugin indent on

" Highlight TODO and FIXME after syntax loads
autocmd FileType * syntax match TodoComment "//\s*TODO:.*"
autocmd FileType * syntax region TodoComment start="/\*\s*TODO" end="\*/"
" this is for normal color settings
" autocmd FileType * highlight TodoComment ctermfg=LightGreen guifg=#A8FF9E
" this is for gruvbox color settings
autocmd FileType * highlight TodoComment ctermfg=Green guifg=#B8FF7F cterm=bold gui=bold

autocmd FileType * syntax match FixmeComment "//\s*FIXME:.*"
" this is for normal color settings
" autocmd FileType * highlight FixmeComment ctermfg=LightRed guifg=#FF9E9E
" this is for gruvbox color settings
autocmd FileType * highlight FixmeComment ctermfg=Red guifg=#FF7F7F cterm=bold gui=bold

autocmd FileType * syntax match HighlightComment "//\s*HIGHLIGHT:.*"
" this is for normal color settings
" autocmd FileType * highlight HighlightComment ctermfg=LightGreen guifg=#A8FF9E
" this is for gruvbox color settings
autocmd FileType * highlight HighlightComment ctermfg=Green guifg=#B8FF7F cterm=bold gui=bold

" Optional: highlight current line
set cursorline
