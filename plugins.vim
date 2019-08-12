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
Plug 'raimondi/delimitmate'
Plug 'dyng/ctrlsf.vim'
"Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-repeat'
call plug#end()

let g:rainbow_active = 1 

nmap gd <Plug>(coc-definition)
nmap <F2> <Plug>(coc-rename)

nmap <leader><leader>r :LeaderfMru<cr>


" move to vim-fireplace settings file
autocmd FileType clojure nnoremap <buffer> <localleader>re :Eval<cr>
autocmd FileType clojure vnoremap <buffer> <localleader>re :Eval<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rf :%Eval<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rr :Require<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rR :Require!<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rt :RunTests<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rl :Last<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rc :FireplaceConnect<cr>
autocmd FileType clojure nnoremap <buffer> gd :normal [<c-d><cr>