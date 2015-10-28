" 插件清单
" phd           http://www.vim.org/scripts/script.php?script_id=3139
" Powerline     https://github.com/Lokaltog/vim-powerline
" signature     https://github.com/kshenoy/vim-signature
" auto pair     https://github.com/jiangmiao/auto-pairs
" emmet-vim     http://github.com/mattn/emmet-vim
" NERDtree      https://github.com/scrooloose/nerdtree
" DrawIt        https://github.com/vim-scripts/DrawIt
" vim-node      https://github.com/moll/vim-node
" java_getset   http://www.vim.org/scripts/script.php?script_id=490
"
"nmap lb 0
"nmap le $
let mapleader=";"
vnoremap <Leader>y "+y
nmap <Leader>p "+p
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>WQ :wa<CR>:q<CR>
nmap <Leader>Q :qa!<CR>
nnoremap nw <C-W><C-W>
nnoremap <Leader>lw <C-W>l
nnoremap <Leader>hw <C-W>h
nnoremap <Leader>kw <C-W>k
nnoremap <Leader>jw <C-W>j
nnoremap <Leader>pa %

set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

filetype on
filetype plugin on
" 自适应不同语言的智能缩进
filetype indent on
" 三种缩进模式cindent, smartindent, autoindent
set autoindent
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 设置各种文件类型的缩进
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype coffeescript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype jade setlocal tabstop=2 shiftwidth=2 softtabstop=2
" 禁止光标闪烁
"set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch
set nobackup
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" 配置方案
set background=dark
let g:Powerline_colorscheme='solarized256'

" nerdtree config
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记： file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" NERDTree 子窗口不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除对应 buffer
let NERDTreeAutoDeleteBuffer=1




