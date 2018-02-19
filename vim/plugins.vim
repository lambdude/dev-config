call plug#begin('~/.vim/plugged')

" Yaml
" Review unimpaired

Plug 'editorconfig/editorconfig-vim'
Plug 'elzr/vim-json'
Plug 'isruslan/vim-es6'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'wellle/targets.vim'

if has('nvim')
    Plug 'shougo/denite.nvim'
    Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'shougo/denite.nvim'
    Plug 'shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

" Plugin settings go here

let g:airline_theme = 'angr'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:deoplete#enable_at_startup = 1

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Plugin mappings go here

" nnoremap <Leader>gg :Git<Cr>
" nnoremap <Leader>gs :Gstatus<Cr>
" nnoremap <Leader>gd :Gdiff<Cr>

" Still need: add, reset, commit, checkout, push, pull

" Denite Settings

call denite#custom#var('file_rec', 'command',
    \ ['rg', '--files', '--glob', '!.git'])

call denite#custom#map(
    \ 'insert',
    \ '<C-j>',
    \ '<denite:move_to_next_line>',
    \ 'noremap'
    \)

call denite#custom#map(
    \ 'insert',
    \ '<C-k>',
    \ '<denite:move_to_previous_line>',
    \ 'noremap'
    \)

call denite#custom#source(
    \ 'file_mru', 'matchers', ['matcher_fuzzy', 'matcher_project_files'])

call denite#custom#source(
    \ 'file_rec', 'matchers', ['matcher_cpsm'])

call denite#custom#source(
    \ 'file_rec', 'sorters', ['sorter_sublime'])

call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts',
    \ ['--vimgrep', '--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

call denite#custom#option('default', 'prompt', '>')

nnoremap <Leader>t :Denite file_rec<Cr>
nnoremap <Leader>f :Denite line<Cr>
nnoremap <Leader>r :Denite outline<Cr>
nnoremap <Leader>g :Denite grep<Cr>
nnoremap <Leader>y :Denite register<Cr>

" Custom Denite buffer commands

