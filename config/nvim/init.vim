" Syntax highlighting
filetype on
syntax on

" Enable plugins
filetype plugin on

" Indentations
filetype indent on

" Relative line numbers
set number relativenumber

" Ctrl arrow should not delete
if &term =~ 'alacritty'
   execute "set <xUp>=\<Esc>[@;*A"
   execute "set <xDown>=\<Esc>[@;*B"
   execute "set <xRight>=\<Esc>[@;*C"
   execute "set <xLeft>=\<Esc>[@;*D"
endif

" Colors wow
colorscheme catppuccin_frappe

 " Use terminal background color
hi Normal guibg=NONE ctermbg=NONE
hi NonText ctermbg=none
hi LineNr ctermbg=none


" Spaces > tabs
set shiftwidth=4
set tabstop=4
set expandtab

" Copy and paste belongs in CTRL+C/V
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" Ctrl + K comments out selection


" Use same buffer as X
set clipboard=unnamedplus

" Git status symbols
let g:NERDTreeGitStatusIndicatorMapCustom = {
            \ 'Modified'  :'M',
            \ 'Staged'    :'A',
            \ 'Untracked' :'U',
            \ 'Renamed'   :'',
            \ 'Unmerged'  :'═',
            \ 'Deleted'   :'',
            \ 'Dirty'     :'✗',
            \ 'Ignored'   :'-',
            \ 'Clean'     :'✔︎',
            \ 'Unknown'   :'?',
            \ }

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

" Format on save, pls
autocmd BufWritePre *.h,*.hpp,*.cpp,*.c,*.py,*.java,*.css,*.js*,*.ts*,*.html,*.scss,*.json Autoformat

" Where am I???
set cursorline
" Define some formatters
let g:formatterpath = ['/home/samkaj/.local/bin/black', '/usr/bin/prettier']

"set nocompatible
" Plugins
call plug#begin()
    Plug 'sheerun/vim-polyglot'
    " Plug 'Valloric/YouCompleteMe'
    Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'prettier/vim-prettier', {
            \ 'do': 'npm install --frozen-lockfile --production',
            \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
    Plug 'vim-autoformat/vim-autoformat'
call plug#end()
