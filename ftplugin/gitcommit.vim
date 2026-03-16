if !exists('s:gitlint_executable')
    let s:gitlint_executable = get(glob($HOME . '/.pyenv/versions/*/bin/gitlint', 1, 1), 0, 'gitlint')
endif

" Fix the gitlint version to a specific one.
let b:ale_gitcommit_gitlint_executable = s:gitlint_executable

" Disable warnings for empty commit bodies.
let b:ale_gitcommit_gitlint_options = '--ignore B6,T5'

setlocal textwidth=72
setlocal colorcolumn=73
" Use spaces as tabs in git commits
setlocal expandtab
" Use 4 space tabs in git commits.
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
