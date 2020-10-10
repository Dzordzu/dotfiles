""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" USER SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set number

"" tab size
set tabstop=3
set shiftwidth=3
set expandtab

if (has("termguicolors"))
 set termguicolors
endif
silent! colorscheme onehalfdark

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
highlight Normal     guibg=#232627

autocmd VimLeave * call system('echo -n ' . shellescape(getreg('+')) .
            \ ' | xclip -selection clipboard')

let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_override_foldtext = 0
let g:table_mode_corner='|'

let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}

let g:tex_flavor = "latex"

set nocp
filetype plugin on

set splitbelow
set splitright

" No need for it (deprecated)
" noremap <silent> <buffer> <Leader>V :vsp<Enter>
" noremap <silent> <buffer> <Leader>S :sp<Enter>

command JSONFormatter %!python -m json.tool

set foldmethod=syntax

" noremap <silent> <Leader>yd :YcmCompleter GoToDefinition<Enter>
" noremap <silent> <Leader>yD :YcmCompleter GoToDeclaration<Enter>
" noremap <silent> <Leader>yi :YcmCompleter GoToInclude<Enter>
" noremap <Leader>yr :YcmCompleter GoToReferences<Enter>
" noremap <silent> <Leader>yf :YcmCompleter FixIt<Enter>
" noremap <Leader>yt :YcmCompleter GetType<Enter>

noremap <Leader><C-s> :w <Enter>
noremap <Leader><C-q> :wq <Enter>
noremap <Leader><C-q><C-q> :wq <Enter>
noremap <Leader><C-q><C-a> :wqa <Enter>
noremap <Leader><C-n> :Ranger<Enter>
noremap <Leader><C-n><C-n> :Ranger<Enter>
noremap <Leader><C-n><C-v> :vsplit<Enter>:Ranger<Enter>
noremap <Leader><C-n><C-s> :split<Enter>:Ranger<Enter>
noremap <Leader><C-n><C-t> :RangerNewTab<Enter>
noremap <Leader><C-h> :ProjectRootCD<Enter>

vmap - <Plug>MoveBlockDown
vmap + <Plug>MoveBlockUp

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"

let &runtimepath.=',~/.config/vim'

function! PUMLSwitchFun() range
   silent execute a:firstline . "," . a:lastline . "s/\\(\\w\\+\\) \\(\"\\w\\+\"\\) \\(\\%([\\.\\-]\\|left\\|up\\|down\\|right\\)\\+\\) \\(\"\\w\\+\"\\) \\(\\w\\+\\)/\\5 \\4 \\3 \\2 \\1/g"
   silent! execute a:firstline . "," . a:lastline . "s/: \\(.*\\)>\\W*$/: \\1 LEFT_GREATER_ORIG_PUML_SWITCH"
   silent! execute a:firstline . "," . a:lastline . "s/: \\(.*\\)<\\W*$/: \\1 RIGHT_GREATER_ORIG_PUML_SWITCH"
   silent! execute a:firstline . "," . a:lastline . "s/\\W\\+LEFT_GREATER_ORIG_PUML_SWITCH/ </g"
   silent! execute a:firstline . "," . a:lastline . "s/\\W\\+RIGHT_GREATER_ORIG_PUML_SWITCH/ >/g"
endfunction

let g:NERDTreeGitStatusUseNerdFonts = 1

command! -range PUMLSwitch <line1>,<line2> call PUMLSwitchFun()

" Reload files
set autoread
au FocusGained,BufEnter * :checktime

" Faster jedi
let g:jedi#completions_enabled = 0
