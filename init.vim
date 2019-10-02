let g:python_host_prog=expand("~/.virtualenvs/neovim2/bin/python2")
let g:python3_host_prog=expand("~/.virtualenvs/neovim3/bin/python3")

let mapleader=" "
let maplocalleader=","
imap jh <esc>
map <F5> :tabnew ~/.config/nvim/init.vim<cr>
map <leader>5 :tabnew ~/.config/nvim/init.vim<cr>
map <Tab> <C-^>
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap s <leader><leader>
set clipboard+=unnamedplus
set wildmode=longest,list,full
set mouse=a
set number
tnoremap <Esc> <C-\><C-n>
tnoremap <C-g> <C-\><C-n>
tnoremap jh <C-\><C-n>

source ~/.config/nvim/plugins.vim
autocmd BufEnter ~/.config/nvim/init.vim nmap <buffer> 2 :e ~/.config/nvim/plugins.vim<cr>

colorscheme jellybeans

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

au BufNew,BufEnter COMMIT_EDITMSG execute "silent! CocDisable"
