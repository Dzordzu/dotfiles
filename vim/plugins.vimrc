call plug#begin('~/.vim/plugged')


" HTML
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

" Docker
Plug 'docker/docker'

" Files and motion
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'git://git.wincent.com/command-t.git'
Plug 'ctrlpvim/ctrlp.vim'

" Visual
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'jacoborus/tender.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Nginx
Plug 'chr4/nginx.vim'

" Python
Plug 'davidhalter/jedi-vim'

" Latex and UML
Plug 'aklt/plantuml-syntax'
Plug 'scrooloose/vim-slumlord'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'
" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

" C++
Plug 'rip-rip/clang_complete'

" TOML
Plug 'cespare/vim-toml'

" Tmux
Plug 'tmux-plugins/vim-tmux'

call plug#end()
