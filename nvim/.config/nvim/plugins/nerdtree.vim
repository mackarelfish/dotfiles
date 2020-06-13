let NERDTreeMinimalMenu=1
let NERDTreeMapCustomOpen="l"

map <C-n> :NERDTreeToggle<CR>

" If NERDTree is the only buffer left, exit vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Nerdtree specific ignore
let NERDTreeIgnore = ['^.git$', '^.sass-cache$', '^.tsc$', '^jspm_packages$', '^node_modules$','^npm-debug.log$' ]
