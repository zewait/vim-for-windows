" ����嵥
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
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
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
" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Useful settings
set history=700
set undolevels=700

set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

filetype on
filetype plugin on
" ����Ӧ��ͬ���Ե���������
filetype indent on
" ��������ģʽcindent, smartindent, autoindent
set autoindent
" ���Ʊ����չΪ�ո�
set expandtab
" ���ñ༭ʱ�Ʊ��ռ�ÿո���
set tabstop=4
" ���ø�ʽ��ʱ�Ʊ��ռ�ÿո���
set shiftwidth=4
" �� vim �����������Ŀո���Ϊһ���Ʊ��
set softtabstop=4
" �����ļ��ı��Զ�����
set autoread
" set colorcolumn=80
" ���ø����ļ����͵�����
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype coffeescript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype jade setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype java set tags=$JAVA_HOME/tags,./tags,tags;
" ��ֹ�����˸
"set gcr=a:block-blinkon0
" ��ֹ��ʾ������
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" ��ֹ��ʾ�˵��͹�����
set guioptions-=m
set guioptions-=T
" ������ʾ״̬��
set laststatus=2
" ��ʾ��굱ǰλ��
set ruler
" �����к���ʾ
set number
" ������ʾ��ǰ��/��
set cursorline
set cursorcolumn
" ������ʾ�������
" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile
set backupdir=$TEMP,$TMP,.
set directory=$TEMP,$TMP,.
" ������ָ���﷨������ɫ�����滻Ĭ�Ϸ���
syntax on
" �����������﷨���д����۵�
"set foldmethod=indent
set foldmethod=syntax
" ���� vim ʱ�ر��۵�����
set nofoldenable

" ���÷���
set background=dark
colorscheme phd
let g:Powerline_colorscheme='solarized256'




" �������
" jelera/vim-javascript-syntax




" nerdtree config
" ʹ�� NERDTree ����鿴�����ļ������ÿ�ݼ����ټǣ� file list
nmap <Leader>fl :NERDTreeToggle<CR>
" ����NERDTree�Ӵ��ڿ��
let NERDTreeWinSize=32
" ����NERDTree�Ӵ���λ��
let NERDTreeWinPos="left"
" NERDTree �Ӵ��ڲ���ʾ���������Ϣ
let NERDTreeMinimalUI=1
" ɾ���ļ�ʱ�Զ�ɾ����Ӧ buffer
let NERDTreeAutoDeleteBuffer=1
