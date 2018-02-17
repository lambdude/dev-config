"---Mappings---"

" Don't override these mappings
" <C-f> Forward one page
" <C-b> Back one page
" <C-e> Scroll down
" <C-y> Scroll up
" <C-o> Previous edit point
" <C-6> Previous file

" No <C-s>
" No <C-c>

" Common commands to prefer
" zz, zt, zb, /, gg, G

" Command mode
" Prefer <C-[>

nnoremap j gj
nnoremap k gk

nnoremap gV `[v`]

" Don't use Ex mode, use Q for formatting
noremap Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-u> <C-g>u<C-u>

inoremap jj <Esc>
vnoremap jj <Esc>

nnoremap <C-z> :sh<Cr>
" <C-d> to return to vim

map Y y$

" No arrows
nnoremap <Left> :echoe "Use h"<Cr>
nnoremap <Right> :echoe "Use l"<Cr>
nnoremap <Up> :echoe "Use k"<Cr>
nnoremap <Down> :echoe "Use j"<Cr>

"--- Custom window mappings ---"

" Move cursor between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make a new horizontal split
nnoremap <C-w><C-x> :sp<Cr>

" Make a new vertical split
nnoremap <C-w><C-v> :vs<Cr>

" Equalize all windows
nnoremap <C-w><C-e> <C-w>=

" Maximize window width and height
nnoremap <C-w><C-o> <C-w><Bar><C-w>_

" Quit current window
nnoremap <C-w><C-q> :q<Cr>

" Save all windows
nnoremap <C-w><C-w> :wa<Cr>

"--- Custom buffer mappings ---"

" Delete buffer
nnoremap <C-w><C-d> :bd<Cr>

" Previous buffer
nnoremap <C-w><C-p> :bp<Cr>

" Next buffer
nnoremap <C-w><C-n> :bn<Cr>

" Search highlight removal
nnoremap <Leader><Space> :nohlsearch<Cr>

