" -[ General behaviour ]-
" general
set nocompatible
set nowrap
set backspace=indent,eol,start
syntax on
filetype plugin indent on

" search
set nohls
set incsearch
set showmatch
set ic " ignore case in searches
set scs " if a capital letter is used assume whole search is case sensitive
set lbr " don't break in the middle of words
set formatoptions=l " don't insert hard newlines
set selection=inclusive

" identing
set cindent
set cinkeys=0{,0},:,0#,!^F
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2

" command mode
set wildmenu
set wildmode=list:longest,full

" -[ Look ]-
" general
set showcmd
set showmode
set number
set colorcolumn=80

" statusline
set statusline=%<%f\ %y%h%m%r\ PWD:%{getcwd()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2

" colours
"set t_Co=256
colorscheme candycode


" -[ FileTypes ]-
" mail
autocmd FileType mail,human set formatoptions+=t textwidth=72

" Python stuff
autocmd FileType python let python_highlight_all = 1
autocmd FileType python let python_slow_sync = 1
autocmd FileType python set expandtab shiftwidth=4 softtabstop=4 
autocmd FileType python set completeopt=preview

" PKGBUILD stuff
autocmd FileType PKGBUILD set expandtab shiftwidth=2 softtabstop=4 

" sh stuff
autocmd FileType sh set expandtab shiftwidth=2 softtabstop=4 

" LaTeX
autocmd Filetype tex,latex set grepprg=grep\ -nH\ $
autocmd Filetype tex,latex let g:tex_flavor = "latex"
let g:Tex_CompileRule_pdf = 'xelatex --interaction=nonstopmode $*'
let g:Tex_DefaultTargetFormat = 'pdf'

" Common Lisp
autocmd FileType lisp let g:slimv_client='python /usr/share/vim/vimfiles/ftplugin/slimv.py -r "urxvt -T Slimv -e @p @s -l sbcl -s"'

" -[ Mappings ]-"
" Tagbar
nnoremap <silent> <F8> :TagbarToggle<CR>
inoremap <silent> <F8> <esc>:TagbarToggle<CR>a
" Clear search highlighting quickly
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" gui options
set guifont=DejaVu\ LGC\ Sans\ Mono\ 10
set guioptions-=m " Remove menu bar
set guioptions-=T " Remove toolbar
" remove scrollbars
set guioptions-=l
set guioptions-=r
set guioptions-=b

" -[ Plugins and Scripts ]-
" taglist
let Tlist_Use_Right_Window = 1
let Tlist_Compart_Format = 1
let Tlist_Show_Menu = 1
let Tlist_Exit_OnlyWindow = 1

" config edit
command W w !sudo tee % > /dev/null

" no bells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
