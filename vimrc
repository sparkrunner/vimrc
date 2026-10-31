syntax enable
colorscheme lunaperche
set number
set ruler
set relativenumber
set undofile
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set mouse=a
set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <ESC> :nohlsearch<CR><ESC>

set list
set listchars=tab:··,trail:·
" command! Trim :%s/\s\+$//e

inoremap <silent> ( ()<ESC>i
inoremap <silent> [ []<ESC>i
inoremap <silent> { {}<ESC>i
" inoremap <silent> (<CR> (<CR>)<ESC>O
" inoremap <silent> [<CR> [<CR>]<ESC>O
inoremap <silent> {<CR> {<CR>}<ESC>O
inoremap <silent> ) <c-r>=Close(')')<CR>
inoremap <silent> ] <c-r>=Close(']')<CR>
inoremap <silent> } <c-r>=Close('}')<CR>
function Close(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

" command! C :!g++ -std=c++23 -Wall -Wextra % -o %:p:r
" command! R :!time %:p:r
