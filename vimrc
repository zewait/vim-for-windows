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
" ���ø����ļ����͵�����
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype coffeescript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype jade setlocal tabstop=2 shiftwidth=2 softtabstop=2
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
set hlsearch
set nobackup
" ������ָ���﷨������ɫ�����滻Ĭ�Ϸ���
syntax on
" ����Ӧ��ͬ���Ե���������
filetype indent on
" ���Ʊ����չΪ�ո�
set expandtab
" ���ñ༭ʱ�Ʊ��ռ�ÿո���
set tabstop=4
" ���ø�ʽ��ʱ�Ʊ��ռ�ÿո���
set shiftwidth=4
" �� vim �����������Ŀո���Ϊһ���Ʊ��
set softtabstop=4
" �����������﷨���д����۵�
"set foldmethod=indent
set foldmethod=syntax
" ���� vim ʱ�ر��۵�����
set nofoldenable

" ���÷���
set background=dark
let g:Powerline_colorscheme='solarized256'

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




