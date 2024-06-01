" 需先安裝 vim-plug 管理外掛
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
call plug#begin()
" 通用
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'jlanzarotta/bufexplorer'
Plug 'Raimondi/delimitMate'

" 特定語言
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'ziglang/zig.vim'
call plug#end()

set nu
set hlsearch
set incsearch
set tabstop=4
set updatetime=100
set ic "搜尋時不管大小寫

filetype plugin indent on
syntax on

" nerdtree
imap <silent> <F5> <Esc>:call Explore_its_directory()<CR>
nmap <silent> <F5> :call Explore_its_directory()<CR>
function! Explore_its_directory()
	execute "NERDTreeToggle ".expand("%:h")
endfunction

" tcomment
nmap ,/ :TComment<Cr>
vmap ,/ :TComment<Cr>

" 消除高亮搜尋
nmap <F3> :noh <Cr>
imap <F3> <Esc>:noh <Cr> 

" bufexplorer
nmap <F4> :BufExplorer<Cr>
imap <F4> <Esc><F4>
