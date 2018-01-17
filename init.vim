" ~/.config/nvim/init.vim

" ~/.local/share/nvim/site/pack/git-plugins/start

" Colorscheme ^^
colorscheme dago

" self-explanatory
syntax on
set number
set showcmd
set title
set relativenumber
set list

" Change cursor shape (legacy hack)
au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"

" html stuff
au FileType html set expandtab
au FileType html set shiftwidth=2
au FileType html set softtabstop=2
au FileType html set tabstop=2
nnoremap ,html :-1read $HOME/.config/nvim/.skeleton.html<CR>6jwf>a

" JavaScript stuff
au FileType javascript set expandtab
au Filetype javascript set shiftwidth=4
au Filetype javascript set softtabstop=4
au Filetype javascript set tabstop=4

hi SignColumn ctermbg=236
hi ALEErrorSign ctermbg=8 ctermfg=red
hi ALEEWarningSign ctermbg=8 ctermfg=yellow
let g:ale_linters = {
\	'javascript': ['eslint'],
\}

""let g:ale_fixers = {
""\	'javascript': ['eslint'],
""\}
""let g:ale_fix_on_save = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '❱'
let g:ale_change_sign_column_color=0
let g:ale_sign_column_always = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

" Spellchecking
autocmd BufRead,BufNewFile *.md,*.txt setlocal spell spelllang=en_us
set complete+=kspell

