execute pathogen#infect()
filetype plugin indent on
syntax on 
set number

if has("gui_running")
    set guioptions-=r
    set guioptions-=m
    set guioptions-=T
endif

" Solarized
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized
set background=light

"" Light at day and dark at night
if has("gui_running")
    if strftime("%H") >= 5 && strftime("%H") <= 17
      set background=light
    else
      set background=dark
    endif
endif

set guifont=Fira\ Mono\ Medium\ for\ Powerline\ 11

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Always use free-form FORTRAN syntax highlighting
"let fortran_free_source=1
let fortran_have_tabs=1

set shiftwidth=4
set tabstop=4
set expandtab

set hlsearch

nmap <Esc><Esc> :w<C-m>

" Map capitals to their lowercase commands
command W w
command Q q

" Disable annoying middle-click paste
map <MiddleMouse> <LeftMouse>
imap <MiddleMouse> <LeftMouse>
map <2-MiddleMouse> <LeftMouse>
imap <2-MiddleMouse> <LeftMouse>
map <3-MiddleMouse> <LeftMouse>
imap <3-MiddleMouse> <LeftMouse>
map <4-MiddleMouse> <LeftMouse>
imap <4-MiddleMouse> <LeftMouse>

" Custom highlighting
highlight Statement gui=bold
highlight Type gui=bold

" Vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1

set exrc
