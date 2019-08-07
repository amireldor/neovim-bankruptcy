call plug#begin('~/.local/share/nvim/plugged')
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'nanotech/jellybeans.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
"Plug 'w0rp/ale'
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-fugitive'
Plug 'luochen1990/rainbow'
Plug 'mattn/emmet-vim'
call plug#end()

let g:rainbow_active = 1 

nmap gd <Plug>(coc-definition)
nmap <leader><leader>r :LeaderfMru<cr>
