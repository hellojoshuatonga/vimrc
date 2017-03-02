set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive' "Plugin for git
"Plugin 'calorie/vim-typing-sound'
Plugin 'joonty/vim-do.git'
Plugin 'tpope/vim-markdown'
Plugin 'airblade/vim-gitgutter'
Plugin 'powerline/powerline'
Plugin 'scrooloose/nerdtree' " File directory tree plugin
Plugin 'tpope/vim-surround' " CRUD of surrounding pairs makes easy
"Plugin 'bling/vim-airline' " Lean and mean status/tabline for vim
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter' " For commenting
Plugin 'easymotion/vim-easymotion' " For easy movement 
Plugin 'Raimondi/delimitMate' " for auto closing of quotes, braces, etc
Plugin 'mattn/emmet-vim' " for emmet
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'MarcWeber/vim-addon-mw-utils' " pluginns for snipmate
"Plugin 'tomtom/tlib_vim' " pluginns for snipmate
"Plugin 'garbas/vim-snipmate' " pluginns for snipmate
"Plugin 'honza/vim-snippets' " pluginns for snipmate
"Plugin 'Yggdroot/indentLine' " for indentation guide
Plugin 'davidhalter/jedi-vim' " Auto complete python
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'majutsushi/tagbar' " for summary of code
Plugin 'ap/vim-css-color' " show colors in css
Plugin 'terryma/vim-multiple-cursors' " for multi selection
Plugin 'luochen1990/rainbow' " for parentheses colors
Plugin 'HTML-AutoCloseTag' " Auto close tag for html
Plugin 'othree/html5.vim' " for html5
Plugin 'whatyouhide/vim-gotham'
Plugin 'isruslan/vim-es6'
Plugin 'gregsexton/MatchTag' " for html matching tags
"Plugin 'mxw/vim-jsx' " for reactjs syntax highlightning
"Plugin 'TaskList.vim' " Todo list
Plugin 'ervandew/supertab'
"Plugin 'klen/python-mode' " python completion
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets' " snippets for neocomplete
"Plugin 'nvie/vim-flake8' " pyython stnax checker
Plugin 'SirVer/ultisnips' " For snippets creating
Plugin 'hail2u/vim-css3-syntax' " for css
Plugin 'briancollins/vim-jst'
Plugin 'groenewege/vim-less'
"Plugin 'andviro/flake8-vim' " for python syntax checker 
"Plugin 'Valloric/YouCompleteMe' " auto completion
Plugin 'ctrlpvim/ctrlp.vim' " buffer
Plugin 'FelikZ/ctrlp-py-matcher' " ctrlp fast matcher base on python
"Plugin 'mxw/vim-jsx' " for react jsx syntax highlighting and indentation of it
"Plugin 'altercation/vim-colors-solarized' " Vim colorscheme
Plugin 'flazz/vim-colorschemes'
Plugin 'ekalinin/dockerfile.vim' " Dockerfile syntax
Plugin 'rakr/vim-two-firewatch'
Plugin 'kchmck/vim-coffee-script' " Coffeescript syntax
Plugin 'digitaltoad/vim-jade' " Jade syntax
Plugin 'sjl/badwolf'
Plugin 'mustache/vim-mustache-handlebars' " Syntax
Bundle 'edkolev/tmuxline.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
set timeout timeoutlen=1500

" set standard encoding 
set encoding=utf8

" use unix as the standard file type
set ffs=unix,dos,mac


" open new split panes to right and bottom which feels more natural than vim's
" default
set splitbelow
set splitright

" >> VIM USER INTEFACE

" visual autocomplete for command menu
set wildmenu

" ignore compiled files
set wildignore=*.o,*~,*.pyc

" highlight current line
set cursorline

" search as characters are entered
set incsearch

" highlight search results

" show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" >> PLUGINS 
" mappings of keys
" for tagbar
nmap <F8> :TagbarToggle<CR>

" open/close nerdtree in normal mode
nmap <F3> :NERDTreeToggle<CR>

" For navigating split navigations or etc
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" auto check file for errors on write
"autocmd BufWritePost *.py call Flake8()
"let g:PyFlakeOnWrite=1
"" List of checker used
"let g:PyFlakeCheckers='pep8,mccabe,frosted'
"
"let g:PyFlakeDisabledMessages='E127'
"let g:PyFlakeDisabledMessages='E128'
"let g:PyFlakeDisabledMessages='E501'
"let g:PyFlakeDisabledMessages='E502'
" start multi cursor mode
"let g:muilti_cursor_start_key='<C-o>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"Rainbow parentheses
let g:rainbow_active=1

"for indentguides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors=0

let g:indent_guides_guide_size = 2 " indent size
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=238
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=236
"airline 
"let g:airline#extension#tabline#enabled=1
"let g:airline_powerline_fonts = 1
"let g:Powerline_symbols = 'fancy'
"if !exists('g:airline_symbols')
  "let g:airline_symbols = {}
"endif

"" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
" For vim airline to appear
"set laststatus=2

"settings for supertab
let g:SuperTabDefaultCompletionType = "<C-X><C-O"
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1
"autcmd CompleteDone * pclose

" For react jsx syntax highlightning
let g:jsx_ext_required = 0

" for omnicomplete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete


" >> OTHER
" Add left side numbes ( line number )
set number
" vim tabs spaces = 4
" size of a hard tabstop
set tabstop=2
"  size of an indent
set shiftwidth=2
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=2
" make tab insert indents instead of tabs at the beginning of a line
set smarttab
"  always uses spaces instead of tab characters
set expandtab


autocmd FileType python setlocal ts=4 sw=4 sts=4 expandtab

"Auto indent
set ai
"Smart indent
set si
" wrap lines
set wrap


" Enable colorscheme
" 256 colors
set t_Co=256
set nohlsearch
"syntax on
"set hlsearch
"set background=dark
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm]]]]

if has("gui_running")
  " Solarized http://ethanschoonover.com/solarized/vim-colors-solarized
  " let g:solarized_termcolors=16
  syntax on
  set background=dark
  set go=c
  "colorscheme solarized
  "colorscheme gotham
  "colorscheme badwolf
  colorscheme molokai
else
  " Solarized http://ethanschoonover.com/solarized/vim-colors-solarized
  "let g:solarized_termcolors=256
  "colorscheme solarized
  "colorscheme monokai " colorscheme is monokai. nice!
  syntax on
  set background=dark
  "let g:solarized_termcolors=256
  "colorscheme solarized
  "colo two-firewatch
  "colorscheme badwolf
  "colorscheme monokai
  colorscheme Crystallite
  "colorscheme gotham
endif

"set background=dark
"syntax on
"let g:solarized_termcolors=256 " use 256 color
"

" Put color in column 80
set colorcolumn=80


" Folding
set foldmethod=indent
set foldnestmax=10
"set nofoldenable
"set foldlevel=2
"



" Ignore this folders when using ctrl p
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules/*


" ctrl + x ctrl + k
set dictionary+=/usr/share/dict/american-english



" Templates / Code snippets
"function PythonFor()
    ":read ~/.vim/templates/python-for.py
"endfunction



"let g:jsx_ext_required = 0 " Allow JSX in normal JS files
"

" For ultisnips
" Trigger configuration. Do not use <tab> if you use
"https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"




"function! PlaySound()
  ":DoQuietly play ~/.vim/typewriter-key-1.aiff
"endfunction
"autocmd CursorMovedI * call PlaySound()

set clipboard=unnamedplus

set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2
