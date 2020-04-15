let g:python_host_prog=expand("~/.virtualenvs/neovim2/bin/python2")
let g:python3_host_prog=expand("~/.virtualenvs/neovim3/bin/python3")

let mapleader=" "
let maplocalleader=","
imap jh <esc>
map <Tab> <C-^>
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap s <leader><leader>
set clipboard+=unnamedplus
set wildmode=longest,list,full
set mouse=a
set relativenumber
tnoremap <Esc> <C-\><C-n>
tnoremap <C-g> <C-\><C-n>

if has('win32')
	map <leader><leader>5 :e ~/AppData/Local/nvim/init.vim<cr>
	map <leader><leader><leader>5 :e ~/AppData/Local/nvim/plugins.vim<cr>
	source ~/AppData/Local/nvim/plugins.vim
	autocmd BufEnter ~/AppData/Local/nvim/init.vim nmap <buffer> 2 :e ~/.config/nvim/plugins.vim<cr>
else
	map <leader><leader>5 :e ~/.config/nvim/init.vim<cr>
	map <leader><leader><leader>5 :e ~/.config/nvim/plugins.vim<cr>
	source ~/.config/nvim/plugins.vim
	autocmd BufEnter ~/.config/nvim/init.vim nmap <buffer> 2 :e ~/.config/nvim/plugins.vim<cr>
end


au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

au BufNew,BufEnter COMMIT_EDITMSG execute "silent! CocDisable" | set tw=78

" https://stackoverflow.com/questions/5698284/in-my-vimrc-how-can-i-check-for-the-existence-of-a-color-scheme
try
  colorscheme jellybeans
catch /^Vim\%((\a\+)\)\=:E185/
    " deal with it
endtry
