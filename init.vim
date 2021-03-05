
call plug#begin("~/.config/nvim/plugged")
Plug 'houtsnip/vim-emacscommandline'
Plug 'supercollider/scvim',
call plug#end()

syntax on
filetype plugin indent on
set rnu nu background=dark
set tw=79
set backupcopy=yes
set ts=2 sts=2 sw=2 expandtab
set wildmode=longest:full,full
let g:EmacsCommandLineSearchCommandLineMapOnlyWhenEmpty = '<M-r>'
let g:scFlash = 1
let g:scTerminalBuffer = "on"


nnoremap ; :
nnoremap H :bp<CR>
nnoremap L :bn<CR>
nnoremap <C-c> <C-c>
nnoremap <C-j> :w \| make<CR>
inoremap jk <Esc>

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType scss setlocal ts=2 sts=2 sw=2 expandtab
if (has('nvim'))
  augroup custom_term
    autocmd!
    autocmd TermOpen * setlocal bufhidden=hide
  augroup END
endif
set exrc
set secure
