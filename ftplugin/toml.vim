" Use 4 spaces for TOML
setlocal expandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4

" Use 2 spaces for v4 project TOML
if expand('%:p') =~# '/v4/'
    setlocal tabstop=2
    setlocal shiftwidth=2
    setlocal softtabstop=2
endif

" Use US English spelling for denseanalysis.org
if expand('%:p') =~# 'denseanalysis-org'
    setlocal spell spelllang=en_us
endif
