call plug#begin("~/.config/nvim/plugged")
Plug 'leafgarland/typescript-vim'
Plug 'posva/vim-vue'
Plug 'houtsnip/vim-emacscommandline'
Plug 'uarun/vim-protobuf'
call plug#end()

syntax on
filetype plugin indent on
set rnu nu background=dark
let g:EmacsCommandLineSearchCommandLineMapOnlyWhenEmpty = '<M-r>'

autocmd FileType typescript :set makeprg=yarn\ dev

" key bindings
nnoremap ; :
nnoremap <C-c> <C-c>
nnoremap <C-j> :w \| make<CR>
inoremap jk <Esc>
