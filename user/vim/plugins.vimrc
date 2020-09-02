call plug#begin('~/.vim/plugged')

" General 
Plug 'tpope/vim-abolish'
Plug 'thaerkh/vim-workspace'
Plug 'matze/vim-move'

" Async jobs
Plug 'prabirshrestha/async.vim'

" HTML
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

" CSS
Plug 'cakebaker/scss-syntax.vim'

" Docker
Plug 'docker/docker'

" Files and motion
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'dbakker/vim-projectroot'
" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'

" Puppet
Plug 'rodjek/vim-puppet' 

" YAML
Plug 'pedrohdz/vim-yaml-folds'


" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


" Visual
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'tarekbecker/vim-yaml-formatter'
Plug 'ryanoasis/vim-devicons'
Plug 'kshenoy/vim-signature'
" Plug 'nathanaelkane/vim-indent-guides'

" General langs
Plug 'sheerun/vim-polyglot'
Plug 'ycm-core/YouCompleteMe'
Plug 'chiel92/vim-autoformat'
Plug 'reedes/vim-wordy'
Plug 'rhysd/vim-grammarous'
Plug 'dense-analysis/ale'
Plug 'vim-test/vim-test'
 
" Theme
Plug 'jacoborus/tender.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
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
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" Haskell
Plug 'neovimhaskell/haskell-vim'

" Latex and UML
Plug 'aklt/plantuml-syntax'
" Plug 'scrooloose/vim-slumlord'
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

" Arduino
Plug 'stevearc/vim-arduino'

" R
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}


call plug#end()
