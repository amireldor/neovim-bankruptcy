let mapleader=" "
let maplocalleader=","
imap jh <esc>
map <F5> :tabnew ~/.config/nvim/init.vim<cr>
map <Tab> <C-^>
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap s <leader><leader>
set clipboard=unnamed
set wildmode=longest,list,full
set mouse=a
tnoremap <Esc> <C-\><C-n>
tnoremap <C-g> <C-\><C-n>
tnoremap jh <C-\><C-n>

source ~/.config/nvim/plugins.vim
autocmd BufEnter ~/.config/nvim/init.vim nmap <buffer> 2 :e ~/.config/nvim/plugins.vim<cr>

colorscheme jellybeans

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
