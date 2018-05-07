set expandtab
set shiftwidth=4
set softtabstop=4
set makeprg=dub\ build
set efm=%*[^@]@%f\(%l\):\ %m,%f\(%l\\,%c\):\ %m,%f\(%l\):\ %m
nnoremap <C-j> :make<CR>
