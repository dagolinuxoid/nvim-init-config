" ~/.config/nvim/init.vim

" ~/.local/share/nvim/site/pack/git-plugins/start

" self-explanatory
syntax on
set number
set showcmd
set title
set relativenumber
set list

" self-explanatory
:inoremap ( ()<Esc>i
:inoremap [ []<Esc>i
:inoremap { {}<Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i

" Elegant highlighting on matching (){}[]
hi MatchParen cterm=bold ctermfg=red ctermbg=none

" Built in syntax highlight awesomeness
hi Comment cterm=italic ctermfg=green
hi Statement ctermfg=blue

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

" Spellchecking
autocmd BufRead,BufNewFile *.md,*.txt setlocal spell spelllang=en_us
set complete+=kspell
