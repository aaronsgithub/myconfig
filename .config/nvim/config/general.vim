" Python support
" =====================================================================================
let g:python_host_prog = '/home/ag/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/ag/.pyenv/versions/neovim3/bin/python'


" netrw file explorer settings
" =====================================================================================
" hide banner
let g:netrw_banner = 0
" hide swp, DS_Store files
let g:netrw_list_hide='.*\.swp$,\.DS_Store'
" set tree style listing
let g:netrw_liststyle=3
" display directories first
let g:netrw_sort_sequence='[\/]$'
" ignore case on sorting
let g:netrw_sort_options='i'
" vspilt netrw to the left window 
"let g:netrw_altv = 1
" 30% of the screen for the netrw window, 70% for the file window
let g:netrw_winsize = 25
" open file in a previous buffer (right window)
let g:netrw_browse_split = 4
" buffer setting
let g:netrw_bufsettings = 'nomodifiable nomodified readonly nobuflisted nowrap number'


map <F2> :Lexplore<cr>
