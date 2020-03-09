
call plug#begin("~/.config/nvim/plugged")
Plug 'leafgarland/typescript-vim'
Plug 'posva/vim-vue'
Plug 'houtsnip/vim-emacscommandline'
Plug 'uarun/vim-protobuf'
Plug 'digitaltoad/vim-pug'
Plug 'claudiocabral/scvim', { 'branch': 'vim_terminal' }
Plug 'tikhomirov/vim-glsl'
Plug 'rust-lang/rust.vim'
Plug 'chrisbra/csv.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'vhdirk/vim-cmake'
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
nnoremap <C-c> <C-c>
nnoremap <C-j> :w \| make<CR>
nnoremap <C-k> :w \| make flash<CR>
inoremap jk <Esc>

autocmd FileType typescript :set makeprg=yarn\ dev
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType scss setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType vue syntax sync fromstart
autocmd FileType rust :set makeprg=make
if (has('nvim'))
  augroup custom_term
    autocmd!
    autocmd TermOpen * setlocal bufhidden=hide
  augroup END
endif
set exrc
set secure
