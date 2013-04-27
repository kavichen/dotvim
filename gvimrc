"set nu

"自动打开nerdtree
autocmd VimEnter * NERDTree
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2

"隐藏工具栏
set guioptions-=T

"command-t
nmap <Leader>t :CommandT<CR>
nmap <Leader>b :CommandTBuffer<CR>

"自动打开taglist
"autocmd VimEnter * TlistToggle
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=1
let Tlist_Compact_Format=1

"set splitright
if has("gui_macvim")
  set transparency=14
  set go=aAce
  set guifont=Monaco:h13
  set showtabline=2
  set columns=140
  set lines=100
  set guioptions-=T
endif
