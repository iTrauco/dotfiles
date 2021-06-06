function! custom_init#before() abort
    set mouse=r
endf 

function! custom_init#before() abort
  let g:terraform_align=1
  let g:terraform_fold_sections=1
  let g:terraform_fmt_on_save=1
endf


function! custom_init#before()
    let g:NERDTreeGitStatusPorcelainVersion = 1
    let g:vista_sidebar_position = 'vertical topleft'
    let g:vista_default_executive = 'coc'
    let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
    let g:cmake_build_options = ['-j$(nproc --all)']

    let g:autoformat_autoindent = 0
    let g:autoformat_retab = 0
    let g:autoformat_remove_trailing_spaces = 0

    augroup Autoformat
        au BufWrite * :Autoformat
        autocmd FileType dockerfile,markdown let b:autoformat_autoindent=0
    augroup END

    let g:localvimrc_ask = 0

    let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'javascript']
endfunction
