set nocompatible
source $VIMRUNTIME/mswin.vim

" Vundle.vim
filetype off                   " required!

"Vundle的路径
set rtp+=$VIM/vimfiles/bundle/Vundle.vim
"插件的安装路径
call vundle#begin('$VIM/vimfiles/bundle/')

" let Vundle manage Vundle
" required!
Bundle 'gmarik/Vundle.vim'
Bundle 'humiaozuzu/dot-vimrc'

"------------------
" Code Completions
"------------------
Bundle 'Shougo/neocomplcache'
Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'

" snippets
Bundle 'msanders/snipmate.vim'
Bundle 'honza/vim-snippets'
"------ snipmate dependencies -------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Bundle 'edsono/vim-matchit'
"Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'vim-scripts/a.vim'
Bundle 'vim-scripts/c.vim'
Bundle 'terryma/vim-multiple-cursors'
Plugin 'fholgado/minibufexpl.vim'
Bundle 'vim-scripts/mru.vim'
Plugin 'vim-scripts/DoxygenToolkit.vim'

"-------------
" Other Utils
"-------------
" Bundle 'humiaozuzu/fcitx-status'
Bundle 'nvie/vim-togglemouse'
Bundle 'dogrover/vim-pentadactyl'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
"Bundle '2072/PHP-Indenting-for-VIm'
"Bundle 'tpope/vim-rails'
"Bundle 'lepture/vim-jinja'
"Bundle 'digitaltoad/vim-jade'

"------- web frontend ----------
Bundle 'othree/html5.vim'
" Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nono/jquery.vim'
" Bundle 'groenewege/vim-less'
" Bundle 'wavded/vim-stylus'
" Bundle 'nono/vim-handlebars'

"------- markup language -------
Bundle 'tpope/vim-markdown'
" Bundle 'timcharper/textile.vim'

"------- Ruby --------
" Bundle 'tpope/vim-endwise'

"------- Go ----------
Bundle 'fatih/vim-go'

"------- FPs ------
Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'wlangstroth/vim-racket'
" Bundle 'vim-scripts/VimClojure'
" Bundle 'rosstimson/scala-vim-support'

"--------------
" Color Schemes
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'fisadev/fisa-vim-colorscheme'
Bundle 'desert-warm-256'
Bundle 'tomasr/molokai'

"filetype plugin indent on     " required!

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Vundle Doesn't Load All Of My Bundles
call vundle#config#require(g:bundles)

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on

"--------
" Vim UI
"--------
"highlight Comment cterm=italic
" color scheme
syntax enable
set background=dark
colorscheme desert

" editor settings
set shortmess=atl
set history=1000
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
"set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set nowrap
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set ruler
"set title                                                         " show file in titlebar
"set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
"禁止光标闪烁
"set gcr=a:block-blinkon0
" 设置当文件被改动时自动载入
set autoread
"自动保存
set autowrite
" 在处理未保存或只读文件的时候，弹出确认
set confirm
"禁止生成临时文件
set nobackup
set noswapfile
" 关闭错误声音
"set noerrorbells
"set novisualbell
"set t_vb=

"高亮显示结果
set hlsearch
"实时匹配搜索文字
set incsearch
set ignorecase
set smartcase
"搜索到文件两端时不重新搜索
"set nowrapscan
" highlight current line
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
set cursorline cursorline
"Search Hit Color
hi Search guibg=peru guifg=wheat

"解决中文乱码
"set encoding=utf-8
"set termencoding=utf-8
set fileencoding=chinese
"set fileencodings=ucs-bom,utf-8,chinese
set langmenu=zh_CN.utf-8

" for powerline
set laststatus=2   " Always show the statusline
"set encoding=utf-8 " Necessary to show Unicode glyphs

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space

if has("gui_running")
    au GUIEnter * simalt ~x " 窗口启动时自动最大化
    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    "set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
    set showtabline=0 " 隐藏Tab栏
endif

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"-----------------
" Plugin settings
"-----------------
" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle

" 设置leader为“;
let mapleader=";"
let g:mapleader=";"
" easy-motion
let g:EasyMotion_leader_key = '<Leader>'
let g:EasyMotion_smartcase = 1

" Tagbar
let g:tagbar_left=0
let g:tagbar_width=25
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif

" NERD_tree.vim
"启动Vim时自动打开nerdtree
"autocmd VimEnter * NERDTreeFind
let NERDChristmasTree=1
" 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
let NERDTreeAutoCenter=1
" 指定书签文件
let NERDTreeBookmarksFile="$HOME\NERDTree_bookmarks"
" 指定鼠标模式(1.双击打开 2.单目录双文件 3.单击打开)
let NERDTreeMouseMode=2
" 是否默认显示书签列表
let NERDTreeShowBookmarks=1
" 是否默认显示文件
let NERDTreeShowFiles=1
" 是否默认显示隐藏文件
let NERDTreeShowHidden=0
" 是否默认显示行号
let NERDTreeShowLineNumbers=0
" 窗口位置（'left' or 'right'）
let NERDTreeWinPos='left'
let NERDTreeHighlightCursorline=1
let NERDTreeDirArrows=0
" 窗口宽度
let NERDTreeWinSize=25
"忽略显示以下类型的文件
let NERDTreeIgnore=['\.o$', '\~$', '\.a$', '\.bak$', '\.d$', '\.aps$']
"let NERDTreeChDirMode = 1

" nerdcommenter
let NERDSpaeeDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

" ZenCoding
let g:user_emmet_expandabbr_key='<C-j>'

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'

" SuperTab
" let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

" Keybindings for plugin toggle
"nnoremap <F2> :set invpaste paste?<CR>
"set pastetoggle=<F2>
nmap <F6> :TagbarToggle<cr>
nmap <F4> :NERDTreeToggle<cr>
"nnoremap <silent> <Leader>nt :NERDTree<CR>
nnoremap <Leader>h :NERDTreeFind<CR>
"nmap <F3> :GundoToggle<cr>
"nmap <F4> :IndentGuidesToggle<cr>
nmap  <D-/> :
nnoremap <leader>a :Ack
nnoremap <leader>v V`]
"映射全选 ctrl+a
:map <C-A> ggVG
:map! <C-A> <Esc>ggVG

imap jj <Esc>
imap kk <Esc>

" 删除所有行未尾空格
nmap <F11> :%s/[ \t\r]\+$//g<CR>

" 聚焦于minibufexpl
nmap <Leader>j :MBEFocus<CR>
"nmap <F3> :MBEbn<CR>
"nmap <S-F3> :MBEbp<CR>
"next/previous buffer
nnoremap <C-[> :bp<CR>
nnoremap <C-]> :bn<CR>

"切换CPP/h
nmap <F12> :A<CR>

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" 自动切换目录为当前编辑文件所在目录
set autochdir

" w!! to sudo & write a file
cmap w!! %!sudo tee >/de/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>e :e $MYVIMRC<CR>
nmap <silent> <leader>s :so $MYVIMRC<CR>

" sublime key bindings
nmap <D-]> >>
nmap <D-[> <<
vmap <D-[> <gv
vmap <D-]> >gv

" eggcache vim
"nnoremap ; :

"定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
"定义快捷键不保存关闭所有窗口
nmap <Leader>qq :qall!<CR>
"定义快捷键保持当前窗口内容
nmap <Leader>w :w<CR>
"保存并退出所有窗口
nmap <Leader>x :wqa<CR>

" using Source Code Pro
"set guifont=Source_Code_Pro_Semibold:h12
"set ambiwidth=double    "设置中文支持

" vim-airline
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tagbar#enabled = 1
"let g:airline#extensions#tagbar#flags = ''
"let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline_inactive_collapse=1
let g:airline#extensions#bufferline#enabled = 1
" status cmd tab completions
let g:airline#extensions#virtualenv#enabled = 1

" powerline
"let g:Powerline_symbols = 'fancy'

"是用<C-箭头键>切换到上下左右窗口中去>
let g:miniBufExplMapWindowNavArrows = 1
"则可以用<C-h,j,k,l>切换到上下左右的窗口中去
let g:miniBufExplMapWindowNavVim = 1
"允许光标在任何位置时用CTRL-TAB遍历buffer
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget = 1
let g:bufExplorerMaxHeight=30
let g:miniBufExplUseSingleClick=1
let g:miniBufExplSplitToEdge = 0
" omni buffer number
let g:miniBufExplShowBufNumbers = 0
" MiniBufExpl Colors
"hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
"hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
"设置当前标签页字体颜色
hi MBEVisibleActiveNormal  guifg=#A6DB29
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg

" syntastic
let g:syntastic_check_on_open = 1
"let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
let g:syntastic_cpp_errorformat = '%f:%l:%c: %trror: %m'
" whether to show balloons
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_highlighting = 1

" plugin - mru.vim 记录最近打开的文件
"let MRU_File = '$HOME\_vim_mru_files'
let MRU_Max_Entries = 1000
let MRU_Add_Menu = 0
nmap <leader>f :MRU<CR>

"DoxygenToolkit.vim
let g:DoxygenToolkit_authorName="z"
let g:DoxygenToolkit_licenseTag=""
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_briefTag_pre = "@brief\t"
let g:DoxygenToolkit_paramTag_pre = "@param\t"
let g:DoxygenToolkit_returnTag = "@return\t"
let g:DoxygenToolkit_briefTag_funcName = "no"
let g:DoxygenToolkit_maxFunctionProtoLines = 30

" nerdcommenter
let NERDSpaceDelims = 1

"启动 pentadactyl 语法高亮
au BufRead,BufNewFile _pentadactylrc set filetype=pentadactyl
au! Syntax pentadactyl source $VIM/vimfiles/bundle/vim-pentadactyl/syntax/pentadactyl.vim
