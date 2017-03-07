"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
filetype off

"Vundle
"--------------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-scripts/Tagbar'

Plugin 'Valloric/YouCompleteMe'

Plugin 'fholgado/minibufexpl.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'vim-syntastic/syntastic'

Plugin 'xolox/vim-easytags'

Plugin 'tpope/vim-fugitive'

Plugin 'xolox/vim-misc'

Plugin 'tpope/vim-obsession'

Plugin 'tpope/vim-surround'

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plugin 'fatih/vim-go'

Plugin 'stannous/vim-claritybeauty'

Plugin 'airblade/vim-gitgutter'


call vundle#end()


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
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings
"

" Map <C-X> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-X> :nohl<CR><C-L>

" Map buffer navigation to <F2> and <F3>
nnoremap , :MBEbp<CR>
nnoremap . :MBEbn<CR>

" FZF with Ctrl O
nnoremap <C-O> :FZF<CR>
inoremap <C-O> :FZF<CR>


" Apply YCM's FixIt suggestion
nnoremap <F9> :YcmCompleter FixIt<CR>
inoremap <F9> :YcmCompleter FixIt<CR>
" New tab with Ctrl-t
"nnoremap <C-t>     :tabe<Space>
"inoremap <C-t>    <Esc>:tabe<Space> 
"
"Toggle tagbar
nmap <F8> :TagbarToggle<CR>

" gotags in Tagbar
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" close active buffer (MBE specific, has to be more than one open)
nmap <F5> <C-W>kd

" Remap window changes
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" \s Replace all occurences of the word under the cursor (good for refactoring)
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>



"-----------------------------------------------------------
" Detect modified files (useful for git and such)
set autoread
"-----------------------------------------------------------
" Sane plugin loading (plugin)
"execute pathogen#infect()
"----------------------------------------------------------
" gcc syntax checker
let g:syntastic_enable_signs = 1
"let g:syntastic_auto_loc_list=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
"let g:syntastic_cpp_include_dirs = [ '<extra include dirs>' ]
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1

let g:syntastic_python_checkers = ['python']

let g:syntastic_go_checkers = ['go', 'gofmt', 'golint']

let g:syntastic_c_checkers = ['gcc']


"Don't automatically check syntax (cuz it makes loading and switching buffers
"super slow)
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
" ---------------------------

" vim-go
" -----------------------
"let g:go_list_type = "quickfix"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"let g:go_metalinter_autosave = 1
"let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'errcheck']
"
"
" easytags
let g:easytags_async = 1
" eclim
"let g:EclimCompletionMethod = 'omnifunc'

" fzf
let g:fzf_files_options = '--black'




"----------------------------------------------------------
" Fix session saving
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

" Plugins to load on start
"autocmd vimenter * NERDTree
autocmd vimenter * TagbarToggle
" Needed for YCM to work
autocmd vimenter * MBEOpen
"let g:neocomplete#enable_at_startup = 1

" max text width of 80
set textwidth=80

"------------------------------------------------------------
" Set the color scheme
colorscheme claritybeauty
set term=screen-256color
