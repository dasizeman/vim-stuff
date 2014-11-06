"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.


" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Display line numbers on the left
set number

" Use <F4> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F4>

"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
"set shiftwidth=2
"set tabstop=2


"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Map tab navigation to <F2> and <F3>
nnoremap <F2> :tabprev<CR>
nnoremap <F3> :tabnext<CR>
inoremap <F2> <Esc>:tabprev<CR>
inoremap <F3> <Esc>:tabnext<CR>

" New tab with Ctrl-t
nnoremap <C-t>     :tabe<Space>
inoremap <C-t>    <Esc>:tabe<Space> 
"------------------------------------------------------------
" Set the color scheme
colors desert

"-----------------------------------------------------------
" Detect modified files (useful for git and such)
set autoread
"-----------------------------------------------------------
" Sane plugin loading (plugin)
execute pathogen#infect()
"----------------------------------------------------------
" gcc syntax checker
let g:syntastic_enable_signs = 1
"let g:syntastic_auto_loc_list=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
"let g:syntastic_cpp_include_dirs = [ '<extra include dirs>' ]
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1



"----------------------------------------------------------
" Fix session saving
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds
