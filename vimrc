"进入gvim,设置字体,背景色及关键字着色等，然后在只读模式下输入命令 :mkvimrc! ~/.vimrc 。这样gvim会在安装目录或者系统文档目录下创建一个”.vimrc”配置文件，要设置须改代码来实现。

"设定windows下gvim 启动时最大化
"autocmd GUIEnter * simalt ~x

"gVim启动窗口位置 大小
"winpos 173 162
"set lines=37 columns=108 

"设定文件编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,latin1

syntax on
filetype plugin on
set hlsearch
set showmode
set nobackup

"配色风格
"colorscheme torte

"文本缩进设置
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set nu

"如果没有下面这段就拷贝进来吧 虽然不知道干什么的
if &term=="xterm"
set t_Co=8
set t_Sb=^[[4%dm
set t_Sf=^[[3%dm
endif

"设定折叠方式
"set foldmethod=indent

"以下字符将被视为单词的一部分 (ASCII)：
"set iskeyword+=33-47,58-64,91-96,123-128

"打开文件自动跳转到上次编辑的行
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"Get out of VI's compatible mode..
set nocompatible

"Sets how many lines of history VIM har to remember
set history=400

"文件在外部被修改则自动保存
set autoread

" vim用户界面

"Turn on WiLd menu
set wildmenu

"Always show current position
set ruler

"The commandbar is 2 high
set cmdheight=2

"Show line number 显示行号
set nu

"Set backspace
set backspace=eol,start,indent

"Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

"show matching bracets
set showmatch

"How many tenths of a second to blink
set mat=2

filetype plugin on

"同样适用于jQuery的js语法高亮
"au BufRead,BufNewFile *.js set syntax=jquery

"map  :NERDTreeToggle

"nmap   :TlistToggle
let Tlist_Use_Right_Window=1
set tags=tags;/

"对NERD_commenter的设置
let NERDShutUp=1
"支持单行和多行的选择，//格式
"map  ,c

" phpDocumentor for VIM
inoremap  :call PhpDocSingle()
nnoremap  :call PhpDocSingle()
vnoremap  :call PhpDocRange()

"对.vimrc配置文件的修改立即生效
autocmd! bufwritepost _vimrc source %
