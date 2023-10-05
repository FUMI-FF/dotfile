call plug#begin()
  Plug 'sainnhe/everforest'
  Plug 'neoclide/coc.nvim'
  Plug 'tpope/vim-surround'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/vim-easy-align'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-commentary'
  Plug 'hashivim/vim-terraform'
call plug#end()

color everforest

syntax enable
set number
set cursorline
set hlsearch
set incsearch
set ignorecase
set smartindent
set wildmenu
set laststatus=2
set noshowmode
set expandtab
set tabstop=2
set shiftwidth=2
" white space
set list
set listchars=tab:>-,space:.
" completion
set completeopt=menu,noinsert
set backspace=indent,eol,start
set directory=/tmp
set encoding=UTF-8
" clipboard copy
set clipboard+=unnamedplus

" clear highlight
nmap <ESC><ESC> :noh<CR>

" edit init.vim
nmap <Space>, :e ~/.config/nvim/init.vim<CR>

" fzf
nmap <Space>p :Files<CR>

" tab switch
nmap gl :tabnext<CR>
nmap gh :tabprevious<CR>

" coc
command! -nargs=0 Format :call CocAction('format')
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ime group EnOnly
command! ImeOff :silent !fcitx5-remote -c 
" ime group Default
command! ImeOn :silent !fcitx5-remote -o

" autocmd
autocmd VimEnter * ImeOff
