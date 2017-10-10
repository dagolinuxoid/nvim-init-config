" ~/.config/nvim/init.vim
execute pathogen#infect()
set number
set showcmd
set title 
" colorscheme NeoSolarized

" self-explanatory
:inoremap ( ()<Esc>i
:inoremap [ []<Esc>i
:inoremap { {}<Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i

" Elegant highlighting on matching (){}[]<htmlTag> 
hi MatchParen cterm=bold ctermbg=none ctermfg=red

" Change cursor shape (legacy hack)
au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
