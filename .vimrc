" Use pathogen to automatically load plugins
execute pathogen#infect()
execute pathogen#helptags()

set mouse=a
set ts=2
set expandtab
set shiftwidth=2
set smarttab
set autoindent
set number
set hlsearch
set incsearch
set showmatch
set nocompatible
set splitright

" Show a print margin at 80 characters
set colorcolumn=80

" Open NerdTree with ctrl-n
map <C-n> :NERDTreeToggle<CR>

" ... ?
syntax on
filetype plugin indent on

" Use my favourite colour scheme
colorscheme distinguished

" Make crtl-u and crtl-w in insert mode undo-able
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" Not sure what this does... look it up
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes = ['html']
let mapleader=","

" Only update the instant markdown preview occasionally instead of realtime.
let g:instant_markdown_slow = 1

" Don't search through these directories when using crtl-p
let g:ctrlp_custom_ignore = {
      \ 'dir': '\v[\/](haproxy-1.4.20|node_modules|.git|yui-compressor)$',
      \ }

" Auto remove trailing whitespace when saving javascript files.
autocmd BufWritePre *.* :%s/\s\+$//e

"{{{
" Remap p so that I can paste in visual mode without overwriting the register
" I haven't found how to hide this function (yet)
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction

function! s:Repl()
    let s:restore_reg = @"
    return "p@=RestoreRegister()\<cr>"
endfunction

" NB: this supports "rp that replaces the selection by the contents of @r
vnoremap <silent> <expr> p <sid>Repl()
" }}}

" *.md files are markdown
au BufRead,BufNewFile *.md set filetype=markdown
