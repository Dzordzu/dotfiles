call plug#begin('~/.vim/plugged')


" HTML
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'jaxbot/browserlink.vim'

" CSS
Plug 'cakebaker/scss-syntax.vim'

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
Plug 'dhruvasagar/vim-table-mode'
Plug 'tarekbecker/vim-yaml-formatter'
" Plug 'nathanaelkane/vim-indent-guides'

" General langs
Plug 'sheerun/vim-polyglot'
Plug 'ycm-core/YouCompleteMe'

" Theme
Plug 'jacoborus/tender.vim'
Plug 'morhetz/gruvbox'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Nginx
Plug 'chr4/nginx.vim'

" REPL
Plug 'jpalardy/vim-slime'

" Python
Plug 'davidhalter/jedi-vim'

" Haskell
Plug 'neovimhaskell/haskell-vim'

" Latex and UML
Plug 'aklt/plantuml-syntax'
Plug 'scrooloose/vim-slumlord'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'https://github.com/lervag/vimtex'

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

" C++
Plug 'rip-rip/clang_complete'
Plug 'vhdirk/vim-cmake'
Plug 'richq/vim-cmake-completion'


" TOML
Plug 'cespare/vim-toml'

" Tmux
Plug 'tmux-plugins/vim-tmux'
Plug 'christoomey/vim-tmux-navigator'

" Jenkins
Plug 'martinda/Jenkinsfile-vim-syntax'

" Scala
Plug 'derekwyatt/vim-scala'

" Ocaml
Plug 'ocaml/merlin'

call plug#end()
