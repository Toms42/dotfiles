set nocompatible  "Kill vi-compatibility
set t_Co=256 "256 color
set encoding=utf-8 "UTF-8 character encoding

"toolkits:


" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

let g:DoxygenToolkit_authorName="John Doe <john@doe.com>"


"remaps:
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>


" Indent 2 spaces
set tabstop=2  "4 space tabs
set shiftwidth=2  "4 space shift
set softtabstop=2  "Tab spaces in no hard tab mode
set expandtab  " Expand tabs into spaces
set autoindent  "autoindent on new lines

set number

set whichwrap+=<,>,h,l,[,]

set autoindent
set smartindent
set textwidth=80
set comments=sl:/*,mb:\ *,elx:\ */
set cinoptions=l1

set showmatch  "Highlight matching braces

set ruler  "Show bottom ruler

set equalalways  "Split windows equal size

set formatoptions=croq  "Enable comment line auto formatting

set title  "Set window title to file
set hlsearch  "Highlight on search
set ignorecase  "Search ignoring case
set smartcase  "Search using smartcase
set incsearch  "Start searching immediately

set scrolloff=5  "Never scroll off
set wildmode=longest,list  "Better unix-like tab completion
set clipboard=unnamed  "Copy and paste from system clipboard
set lazyredraw  "Don't redraw while running macros (faster)
set wrap  "Visually wrap lines
set linebreak  "Only wrap on 'good' characters for wrapping
set backspace=indent,eol,start  "Better backspacing
set linebreak  "Intelligently wrap long files
set ttyfast  "Speed up vim
set nostartofline "Vertical movement preserves horizontal position

" enable mouse usage!!!!
set mouse=a

" pathogen and linting holy fuckamoley
" execute pathogen#infect()

" autocmd BufRead,BufNewFile *.c0 set filetype=c
" ^ disabled until I figure out how to get it to lint right :(


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Strip whitespace from end of lines when writing file
autocmd BufWritePre * :%s/\s\+$//e

" Syntax highlighting and stuff
set t_Co=256
color ron
syntax on
filetype plugin indent on

" Enhanced keyboard mappings
"
" in normal mode F2 will save the file
nmap <F3> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
imap <F3> <ESC>:w<CR>i

imap <F2> <ESC>:wq<CR>
nmap <F2> :wq<CR>

imap <F1> <ESC>:q<CR>
nmap <F1> :q<CR>

" switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" recreate tags file with F5
map <F5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
" create doxygen comment
map <F6> :Dox<CR>
" build using makeprg with <F7>
map <F7> :make<CR>
" build using makeprg with <S-F7>
map <S-F7> :make clean all<CR>
" goto definition with F12
map <F12> <C-]>
