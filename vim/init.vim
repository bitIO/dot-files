"Specify a directory for plugins"
call plug#begin('~/.config/nvim/plugged')


Plug 'joshdick/onedark.vim' "Neovim theme"
Plug 'itchyny/lightline.vim' "Lightline statusbar vim"
Plug 'sheerun/vim-polyglot' "Multiple language support"
Plug 'airblade/vim-gitgutter' "Git status gutter"
Plug 'lukas-reineke/indent-blankline.nvim' "Blank line indent"
Plug 'andymass/vim-matchup' " matching parens and more
Plug 'w0rp/ale' " linter
Plug 'neoclide/coc.nvim', {'branch': 'release'} " language server
Plug 'bronson/vim-trailing-whitespace' " highlight trailing spaces
Plug 'nvim-tree/nvim-web-devicons' " Tab manager
Plug 'romgrk/barbar.nvim' " Tab manager
Plug 'preservim/nerdtree' "Tree explorer"
Plug 'ryanoasis/vim-devicons' "Dev icons for nerdtree"
Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin' "Git status for nerdtree"

"Initialize plugin system"
call plug#end()


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"onedark theme"
syntax on
colorscheme onedark

"vimrc like configuration"
set title  " Muestra el nombre del archivo en la ventana de la terminal
set number " Muestra los números de las líneas
set nowrap  " No dividir la línea si es muy larga
set cursorline  " Resalta la línea actual
set colorcolumn=80  " Muestra la columna límite a 80 caracteres
" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab  " Insertar espacios en lugar de <Tab>s
set hidden  " Permitir cambiar de buffers sin tener que guardarlos
"set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
"set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas
set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español
"set termguicolors  " Activa true colors en la terminal
"set background=light  " Fondo del tema: light o dark
set encoding=UTF-8

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}
let g:ale_fix_on_save = 1

lua require('settings')