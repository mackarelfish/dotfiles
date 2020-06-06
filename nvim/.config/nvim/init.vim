set rtp +=~/.config/nvim
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/fzf.vim'
Plug 'alvan/vim-closetag'
Plug 'rbgrouleff/bclose.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'hsanson/vim-winmode'
Plug 'easymotion/vim-easymotion'

Plug 'mlaursen/vim-react-snippets'
Plug 'sheerun/vim-polyglot'

Plug 'styled-components/vim-styled-components'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'relastle/bluewery.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'rainglow/vim'

call plug#end()

set statusline=
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set statusline+=\ %f  " Path to the file
set statusline+=%=        " Switch to the right side
set statusline+=%y\ %l        " Current line
set statusline+=/         " Separator
set statusline+=%L\       " Total lines

source $HOME/.config/nvim/general/paths.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/general/autoload.vim
source $HOME/.config/nvim/general/settings.vim

colorscheme gruvbox
source $HOME/.config/nvim/themes/ayu.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/gruvbox.vim

source $HOME/.config/nvim/plugins/boldoff.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/whichkey.vim
source $HOME/.config/nvim/plugins/fzf.vim
source $HOME/.config/nvim/plugins/easymotion.vim
source $HOME/.config/nvim/plugins/closetag.vim

let g:zoomwintab_remap = 0
