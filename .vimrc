source /usr/share/vim/vim82/defaults.vim 

set ttimeoutlen=20
set scrolloff=999
set tabstop=2
set shiftwidth=2
set complete-=i
set wildmode=longest:full,full
" set path+=**
set autochdir
set number
set whichwrap+=<,>,h,l,[,]


" fix weird behavior
nmap o o<Esc>i
nmap O O<Esc>i


" ctrl space to autocomplete
inoremap <Nul> <c-n>



" PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'morhetz/gruvbox'
Plug 'adelarsq/vim-matchit'
Plug 'mg979/vim-visual-multi'
call plug#end()

" PLUGIN SETTINGS
nmap ; :Files<CR>
nmap <C-o> :NERDTreeToggle<CR>


" LIGHTLINE 
set noshowmode
set laststatus=2


" EMMET
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key=','
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0


" GRUVBOX
colorscheme gruvbox
set background=dark



" SNIPPETS
inoremap !html <Esc>:r ~/.vim/skel/html_base.html<CR>kdd6jf>a
