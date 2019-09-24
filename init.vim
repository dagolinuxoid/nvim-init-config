" ~/.config/nvim/init.vim

" vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'prettier/vim-prettier'

call plug#end()

" Colorscheme ^^
colorscheme dago

" self-explanatory
syntax on
set number
set showcmd
set title
set relativenumber
set list

" tab to space
:set tabstop=2 shiftwidth=2 expandtab

" remapping for emmet autocompletion
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Change cursor shape (legacy hack)
au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"

nnoremap ,html :-1read $HOME/.config/nvim/.skeleton.html<CR>6jwf>a

" Prettier
let g:prettier#exec_cmd_path = "prettier"
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" Spellchecking
autocmd BufRead,BufNewFile *.md,*.txt setlocal spell spelllang=en_us
set complete+=kspell

