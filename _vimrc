set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$VIM_HOME/vimfiles/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'fholgado/minibufexpl.vim'
Plugin 'phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'kshenoy/vim-signature'
Plugin 'mattn/emmet-vim'
" enable just for html/css
" let g:user_emmet_install_global = 0
" autocmd FileType html, css EmmetInstall
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/DrawIt'
" Plugin 'moll/vim-node'
Plugin 'java_getset.vim'
Plugin 'godlygeek/tabular'
Plugin 'digitaltoad/vim-jade'
Plugin 'derekwyatt/vim-scala'
" Fuzzy file, buffer, mru, tag, etc finder. http://kien.github.com/ctrlp.vim
Plugin 'kien/ctrlp.vim'
" ignore file
set wildignore+=*.class,tmp,target,bin,*.pyc,*_build/*,*/coverage/*

Plugin 'rustushki/JavaImp.vim'
let g:JavaImpPaths = 
    \ $JAVA_HOME . "\\src," .
    \ "E:\\play\\activator-dist-1.3.6\\repository," .  
    \ ".\\app" .
    \ ".\\test"
let g:JavaImpDataDir = $VIM_HOME . "\\JavaImp"

Plugin 'matchit.zip'
" Settings for python-mode
" Note: I'm no longer using this. Leave this commented out
" and uncomment the part about jedi-vim instead
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
"Plugin 'klen/python-mode'
"let g:pymode_rope_completion_bind = '<C-c>'
"map <Leader>g :call RopeGotoDefinition()<CR>
"let ropevim_enable_shortcuts = 1
"let g:pymode_rope_goto_def_newwin = "vnew"
"let g:pymode_rope_extended_complete = 1
"let g:pymode_breakpoint = 0
"let g:pymode_syntax = 1
"let g:pymode_syntax_builtin_objs = 0
"let g:pymode_syntax_builtin_funcs = 0
"let g:pymode_rope_completion_bind = '<C-C>'
"map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
Plugin 'davidhalter/jedi-vim'
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" Python folding
Plugin 'Efficient-python-folding'
set nofoldenable

" Improved C++11/14 STL syntax highlighting
Plugin 'Mizuchi/STL-Syntax'

Plugin 'taglist.vim'
"let Tlist_Ctags_Cmd = 'ctags'
"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Show_One_File = 1
"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1
"在右侧窗口中显示taglist窗口 
let Tlist_Use_Right_Window = 1

Plugin 'SirVer/ultisnips'
Plugin 'isRuslan/vim-es6'

Plugin 'BufOnly.vim'

Plugin 'FooSoft/vim-argwrap'
nnoremap <silent> <leader>a :ArgWrap<CR>

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
" Put your non-Plugin stuff after this linen
