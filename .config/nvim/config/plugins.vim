" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
call plug#begin('~/.local/share/nvim/plugged')

" theme - https://github.com/morhetz/gruvbox
Plug 'morhetz/gruvbox'


" Initialize plugin system
call plug#end()

" Configure colorscheme
set background=dark
let g:gruvbox_contrast_dark='medium'
colorscheme gruvbox
