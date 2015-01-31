"""""""""""""""""""""""""""""""""""""
"  Maxmize Window
"""""""""""""""""""""""""""""""""""""
if has('win32')
    au GUIEnter * simalt ~x
else
    au GUIEnter * call MaximizeWindow()
endif


function! MaximizeWindow()
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction 

""""""""""""""""""""""""""""""""""""""
" Plug settings
""""""""""""""""""""""""""""""""""""""

" vim-powerline
let g:Powerline_symbols = 'unicode'

""""""""""""""""""""""""""""""""""""""
" common settings
""""""""""""""""""""""""""""""""""""""
set fenc=utf-8
set fencs=utf-8,usc-bom,gb18030,gbk,gb2312,cp936

" line of history file
set history=1000
" put confirm while read only
set confirm
" share clipboard with windows
set clipboard+=unnamed

" distinguish the type of file
filetype on

" filetype plugin
filetype plugin on

" save global variables
set viminfo+=!

set iskeyword+=_,$,@,%,#,-

" enable the syntax
syntax enable
syntax on
" set the color theme
colorscheme monokai 
set t_Co=256
set nu!
set guifont=monofur\ 12
set guioptions-=M
set guioptions-=T
"""""""""""""""""""""""""""""""""""""""
" file settings
"""""""""""""""""""""""""""""""""""""""
set linespace=0
set wildmenu

set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

set cmdheight=2

set backspace=2

set whichwrap+=<,>,h,l

set mouse=a
set selection=exclusive
set selectmode=mouse,key

set report=0

set noerrorbells

set fillchars=vert:\ ,stl:\ ,stlnc:\

"""""""""""""""""""""""""""""""""""""""""""""
" search settings
"""""""""""""""""""""""""""""""""""""""""""""

set showmatch

set ignorecase
set incsearch

set listchars=tab:>-,trail:-

set scrolloff=3
set novisualbell

"set statusline=%F%m%r%h%w\ FORMAT:%{&ff}%=TYPE:%Y\ \ %lL,%vC\ \ [%p%%]\ \ LEN\:%LL

set laststatus=2
""""""""""""""""""""""""""""""""""""""""""""""
"  formates
""""""""""""""""""""""""""""""""""""""""""""""

set formatoptions=tcrqn

set autoindent

set smartindent

set cindent
set tabstop=4

set softtabstop=4
set shiftwidth=4

set expandtab

set nowrap

"""""""""""""""""""""""""""""""""""""""""""""
" settings about CTags
"""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Sort_Type = "name"
let Tlist_Use_Right_Window = 0
let Tlist_Compart_Format = 1
let Tlist_Exist_OnlyWindow = 1
let Tlist_Show_One_File=1
let Tlist_File_Fold_Auto_Class = 0

"""""""""""""""""""""""""""""""""""""""""""""
" C complite
"""""""""""""""""""""""""""""""""""""""""""""
map  :call CompileRunGcc()
func! CompliRunGcc()
exec "w"
exec "!gcc % -o %<"
exec "! ./%<"
endfunc

""""""""""""""""""""""""""""""""""""""""""""
" C++
""""""""""""""""""""""""""""""""""""""""""""
map  :call ComplieRunGpp()
func! ComplieRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc



"""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
" Support to css3
Bundle "lepture/vim-css"

" Power line plugin
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
