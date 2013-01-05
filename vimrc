runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
set transparency=50
let mapleader = ","
nmap n :NERDTree

syntax enable
set ruler
set showcmd

set hlsearch
set incsearch
set ignorecase
set smartcase

set tabstop=4
set shiftwidth=4
set expandtab
set cindent

autocmd FileType ruby set tabstop=2|set shiftwidth=2
autocmd FileType php set tabstop=4|set shiftwidth=4

set fileencodings=ucs-bom,utf-8,cp936,gbk,big5,euc-jp,euc-kr,latin1

set ffs=unix

"pathogen
call pathogen#infect()

" PHP parser check (CTRL-L)
autocmd FileType php noremap <C-L> :!/usr/bin/php -l %<CR>

" set ctp files to php & html filetype
au BufRead,BufNewFile *.ctp        set filetype=php.html

let g:molokai_original = 1
let g:snips_author = 'Kavi'

let mapleader = ','

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

let g:syntastic_loc_list_height=5
let g:syntastic_check_on_open=1
nmap <Leader>stt :Errors <CR>

colorscheme elflord          " 着色模式：黄色和粉红色为主
set guifont=Monaco:h11       " 字体 && 字号
set backspace=2              " 设置退格键可用
set autoindent               " 自动对齐
set ai!                      " 设置自动缩进
set smartindent              " 智能自动缩进
set shiftwidth=2             " 换行时行间交错使用2空格
set cindent shiftwidth=2     " 自动缩进2空格
set nu!                      " 显示行号
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 开启实时搜索功能
set hlsearch                 " 开启高亮显示结果
set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
set vb t_vb=                 " 关闭提示音
set hidden                   " 允许在有未保存的修改时切换缓冲区
set autochdir                " 设定文件浏览器目录为当前目录
set foldmethod=syntax        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠
set laststatus=2             " 开启状态栏信息
set cmdheight=2              " 命令行的高度，默认为1，这里设为2
"set showmatch               " 显示括号配对情况
set cursorline              " 突出显示当前行
"set nowrap                  " 设置不自动换行
set writebackup              " 设置无备份文件
set nobackup
set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,
set tabstop=2                " 设置Tab键的宽度        [等同的空格个数]
set expandtab                " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

" 每行超过80个的字符用下划线标示
au BufRead,BufNewFile *.s,*.c,*.cpp,*.h,*.cl,*.rb,*.sql,*.sh,*.vim,*.js,*.css,*.html 2match Underlined /.\%81v/

" 设置编码
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1

" ======= 引号 && 括号自动匹配 ======= "

:inoremap ( ()<ESC>i

:inoremap ) <c-r>=ClosePair(')')<CR>

:inoremap { {}<ESC>i

:inoremap } <c-r>=ClosePair('}')<CR>

:inoremap [ []<ESC>i

:inoremap ] <c-r>=ClosePair(']')<CR>

:inoremap " ""<ESC>i

""':inoremap ' ''<ESC>i

:inoremap ` ``<ESC>i

function ClosePair(char)
  if getline('.')[col('.') - 1] == a:char
     return "\<Right>"
  else
     return a:char
  endif
endf


" ESC + H             Normal模式下开启Devhelp查询功能
function! DevHelpCurrentWord()
  let word = expand("<cword>")
  exe "!devhelp -s " . word . " &"
endfunction
nmap <esc>h :call DevHelpCurrentWord()<CR>

" MiniBufExplorer     多个文件切换 可使用鼠标双击相应文件名进行切换
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

" :Tlist              调用TagList
let Tlist_Show_One_File=1                    " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close=1             " 自动折叠

" :LoadTemplate       根据文件类型自动加载模板
let g:template_path='~/.vim/template/'

" ======= VimWiki ======= "

" 设置编码
let g:vimwiki_w32_dir_enc = 'utf-8'

" 使用鼠标映射
let g:vimwiki_use_mouse = 1

" 不要将驼峰式词组作为 Wiki 词条
let g:vimwiki_camel_case = 0

" 声明可以在wiki里面使用的HTML标签
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h2,h4,h5,h6,pre,script,style'

let g:vimwiki_list = [{
\ 'path': '~/vimwiki/',
\ 'path_html': '~/kavichen.github.com/wiki/',
\ 'auto_export': 1,
\ 'nested_syntaxes': {'Clang': 'c', 'C++': 'cpp', 'Lisp': 'lisp', 'Ruby': 'ruby', 'SQL': 'sql', 'Bash': 'sh', 'Vim': 'vim', 'Make': 'make', 'CMake': 'cmake', 'JS': 'javascript', 'CSS': 'css', 'HTML': 'html', 'XML': 'xml'},}]

