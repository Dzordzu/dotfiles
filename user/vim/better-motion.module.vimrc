let g:bettermotion = 0
noremap <silent> <Leader>W :call BetterMotion()<CR>
function BetterMotion()
  if g:bettermotion
    let g:bettermotion = 0
    echo "BetterMotion Off"
    set virtualedit=all
    silent! nunmap <buffer> j
    silent! nunmap <buffer> k
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
    silent! iunmap <buffer> <Home>
    silent! iunmap <buffer> <End>
  else
    let g:bettermotion = 1
    echo "BetterMotion on"
    set virtualedit=
    setlocal display+=lastline
    noremap  <buffer> <silent> k      gk
    noremap  <buffer> <silent> j      gj
    noremap  <buffer> <silent> <Home> g<Home>
    noremap  <buffer> <silent> <End>  g<End>
    inoremap <buffer> <silent> <Home> <C-o>g<Home>
    inoremap <buffer> <silent> <End>  <C-o>g<End>
  endif
endfunction
