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

"" VIM-INSTANT-MARKDOWN
let g:instant_markdown_browser = "qutebrowser"

let g:arduino_dir = '/usr/share/arduino'


"" SYNTASTIC
let g:syntastic_yaml_checkers = ['yamllint']

"" MOVE
let g:move_key_modifier = 'C'

""" VIM-TEST
let test#strategy = {
  \ 'nearest': 'vimux',
  \ 'file':    'neovim',
  \ 'suite':   'vimux',
\}
