function! custom_init#before() abort
    set mouse=r
endf 

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set foldlevelstart=20

let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'


function! custom_init#before() abort
  let g:terraform_align=1
  let g:terraform_fold_sections=1
  let g:terraform_fmt_on_save=1
endf


function! custom_init#before() abort
    let g:GPGPreferArmor=1
    let g:GPGDefaultRecipients=["GnuPG ID here"]
endf

function! custom_init#before() abort
    let g:NERDTreeGitStatusPorcelainVersion = 1
    let g:vista_sidebar_position = 'vertical topleft'
    let g:vista_default_executive = 'coc'
    let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
    let g:cmake_build_options = ['-j$(nproc --all)']

    let g:autoformat_autoindent = 1
    let g:autoformat_retab = 0
    let g:autoformat_remove_trailing_spaces = 1

    augroup Autoformat
        au BufWrite * :Autoformat
        autocmd FileType dockerfile,markdown let b:autoformat_autoindent=0
    augroup END

    let g:localvimrc_ask = 0

    let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'javascript']
endf

function! TabLcd()
    let current_tab = tabpagenr()
    tabdo lcd %:p:h
    execute 'tabnext' current_tab
endfunction

nnoremap <silent> <leader>lcd :call TabLcd()<cr>
