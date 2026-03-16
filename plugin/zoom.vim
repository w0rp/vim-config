if &cp || exists("g:loaded_zoom")
    finish
endif
let g:loaded_zoom = 1

let s:save_cpo = &cpo
set cpo&vim

" keep default value
let s:current_font = &guifont

" command
command! -narg=0 ZoomIn    :call s:ZoomIn()
command! -narg=0 ZoomOut   :call s:ZoomOut()
command! -narg=0 ZoomReset :call s:ZoomReset()

" map
nmap = :ZoomIn<CR>
nmap - :ZoomOut<CR>

" guifont size + 1
function! s:ZoomIn()
    if &guifont =~ ':h\d\+$'
        let l:fontName = substitute(&guifont, '^\(.*:h\)\d\+$', '\1', '')
    else
        let l:fontName = substitute(&guifont, '^\(.\+ \)\d\+$', '\1', '')
    endif

    let l:fontSize = matchstr(&guifont, '\d\+$')
    let l:fontSize += 2
    let &guifont = fontName . fontSize
endfunction

" guifont size - 1
function! s:ZoomOut()
    if &guifont =~ ':h\d\+$'
        let l:fontName = substitute(&guifont, '^\(.*:h\)\d\+$', '\1', '')
    else
        let l:fontName = substitute(&guifont, '^\(.\+ \)\d\+$', '\1', '')
    endif

    let l:fontSize = matchstr(&guifont, '\d\+$')
    let l:fontSize -= 2
    let &guifont = fontName . fontSize
endfunction

" reset guifont size
function! s:ZoomReset()
  let &guifont = s:current_font
endfunction

let &cpo = s:save_cpo
finish
