
call plug#begin('~\AppData\Local\nvim\plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'leafgarland/typescript-vim'
Plug 'chemzqm/vim-jsx-improve'
Plug 'mxw/vim-jsx'
Plug 'suy/vim-context-commentstring'
"telescope requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'ianks/vim-tsx'
Plug 'styled-components/vim-styled-components'
" Plug 'Shougo/neocomplete.vim'
" Plug 'vim-scripts/AutoComplPop'
" Plug 'alvan/vim-closetag'
" Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'jparise/vim-graphql'
call plug#end()

colorscheme gruvbox

set clipboard=unnamed
set backspace=indent,eol,start

" nerdtree
let NERDTreeMinimalUI = 1

"ag items
if executable('ag')
	set grepprg=ag\ --nogroup\ --nocolor\ --column

	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

	let g:ctrlp_use_caching = 0
endif

"coc start command
autocmd VimEnter * CocStart
set encoding=utf-8
autocmd FileType javascript set commentstring=/*\ %s\ */
autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}
autocmd FileType html omnifunc=htmlcomplete#CompleteTags
" autocmd FileType html setl commentstring=//
"autocmd FileType css set commentstring=//
"autocmd FileType vimfile setl commentstring=`"`\ %s
setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
set exrc
set nobackup
set nowritebackup
set nohlsearch 
set incsearch
set hidden
set tabstop=4 
set softtabstop=4 
set shiftwidth=4
set smartindent
set mouse=a
set nu
set expandtab
set guicursor=
set relativenumber
set scrolloff=8
set termguicolors
set colorcolumn=80
set signcolumn=yes
set noerrorbells
set noswapfile
set belloff=all
set splitbelow
" set cmdheight=2
set cwh=2
set nowrap

set updatetime=50

au ColorScheme * hi Normal ctermbg=none guibg=none
" au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red
" let g:coc_global_extenstions = [
"       \  'coc-snippets',
"       \  'coc-pairs',
"       \  'coc-tsserver',
"       \  'coc-eslint',
"       \  'coc-prettier',
"       \  'coc-json',
"       \ ]
let g:coc_global_extenstions = ['coc-snippets', 'coc-pairs', 'coc-emmet', 'coc-tslint', 'coc-tsserver', 'coc-prettier', 'coc-styled-components', 'coc-html', 'coc-phpls']
" Remaps
let mapleader = " "
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
map <leader>r :NERDTreeFind<CR>
nnoremap <silent><leader>= :vertical resize +5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>
inoremap {<CR> {<CR>}<c-o>O
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
"fuzzy finder stuff
lua require('telescope').setup({defaults = {file_sorter = require('telescope.sorters').get_fzy_sorter}})
" nnoremap <leader> ps :lua require('telescope.builtin').grep_string( {search = vim.fn.input("Grep For > ")})
" nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
" nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


"sessions

"save session on quitting Vim
"autocmd VimLeave * NERDTreeClose
"autocmd VimLeave * mksession! ~/vimfiles/sessions/last.vim
"restore session on starting vim
"autocmd VimEnter * call MySessionRestoreFunction()
"autocmd VimEnter  * NERDTree
"mksession E:/Summer 2021 Web Dev/react/personalwebsite
