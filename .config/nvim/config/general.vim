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

" Toggle file explorer in left split
map <F2> :Lexplore<cr>

" Toggle terminal
" Taken from https://stackoverflow.com/questions/37232418/toggle-neovim-terminal-buffer-like-nerdtree-plugin/44273779#44273779
let g:term_buf = 0
let g:term_win = 0

function! Term_toggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction


nnoremap <F3> :call Term_toggle(10)<cr>
tnoremap <F3> <C-\><C-n>:call Term_toggle(10)<cr>
tnoremap <Esc> <C-\><C-n>


" Nice trick to make current buffer full screen using tabs.
" From https://stackoverflow.com/a/15584901
noremap tt :tab split<CR>
noremap tc :tabc<CR>


" Indentation
set autoindent
set smartindent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4


