filetype plugin on

call plug#begin('~/.vim/plugged')

Plug 'rstacruz/sparkup'
Plug 'tpope/vim-fugitive'
Plug 'git://git.wincent.com/command-t.git'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

Plug 'docker/docker'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'aklt/plantuml-syntax'
Plug 'scrooloose/vim-slumlord'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
" C++
Plug 'rip-rip/clang_complete'
call plug#end()

"""""
" Settings that are necessey to run plugins
""""""
let g:clang_library_path='/usr/lib64/libclang.so.8'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" USER SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set number

"" tab size
set tabstop=3
set shiftwidth=3
set expandtab


"" COMMAND-T
let g:CommandTMaxDepth=5




"" INDENT GUIDES
let g:indent_guides_enable_on_vim_startup = 1




"" LIGHTLINE
set noshowmode
set laststatus=2




"" CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rac'




"" EASY MOTION
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
