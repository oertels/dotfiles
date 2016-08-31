" Use Vim settings, rather then Vi settings (much better!). 
set nocompatible 

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
  set cmdheight=2
  set mouse=a
  let html_use_css=1

endif

set dir=$TEMP
set autoread
set autochdir

" Highlight current line 
autocmd WinEnter * setlocal cursorline 
autocmd WinLeave * setlocal nocursorline 
set cursorline 
hi Cursorline ctermbg=black guibg=#073642

" Set coloset cursorline rscheme, font and syntax highlighting 
set background=dark 
colorscheme solarized 
set guifont=Consolas:h12:cANSI 
syntax enable 
 
" keep 50 lines of command line history
set history=50 

" allow backspacing over everything in insert mode 
set backspace=indent,eol,start 
 
" show mode
set showmode

" show (partial) commands
set showcmd   

" I like 4 spaces for indenting 
set shiftwidth=4 
 
" I like 4 stops 
set tabstop=4 
 
" Spaces instead of tabs 
set expandtab 

set shiftround

" Always  set auto indenting on 
filetype indent on 
set autoindent 
 
" select when using the mouse 
set selectmode=mouse 
 
" do not keep a backup files  
set nobackup 
set nowritebackup 
 
" keep 50 lines of command line history 
set history=50   
 
" show the cursor position all the time 
set ruler        
 
" show line numbers 
set nu 
 
" show (partial) commands 
set showcmd      
 
" do incremental searches (annoying but handy); 
set incsearch  
 
" Show  tab characters. Visual Whitespace. 
" set list 
" set listchars=tab:>. 
 
" Set ignorecase on 
" set ignorecase 
 
" smart search (override 'ic' when pattern has uppers) 
set scs 
 
" highlight search 
set hls 
 
" Set 'g' substitute flag on 
" set gdefault 
 
" Set status line 
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%* 
 
" Always display a status line at the bottom of the window 
set laststatus=2 
 
" Set vim to use 'short messages'. 
" set shortmess=a 
 
" Insert two spaces after a period with every joining of lines. 
" I like this as it makes reading texts easier (for me, at least). 
set joinspaces 
 
" showmatch: Show the matching bracket for the last ')'? 
set showmatch 
 
" allow tilde (~) to act as an operator -- ~w, etc. 
set notildeop 
 
" highlight strings inside C comments 
let c_comment_strings=1 

" PLUGINS

" Tagbar
"let g:tagbar_autoclose = 1
let g:tagbar_width = 30
let g:SuperTabDefaultCompletionType = "context"
let g:fuf_modesDisable = [ 'mrufile', 'mrucmd', ]

" SHORTCUTS
nmap <F3> :tabe %:h<CR>
nmap <F8> :TagbarToggle<CR> 
