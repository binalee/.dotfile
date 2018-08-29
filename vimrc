syntax on
filetype plugin indent on

set autoindent
set backspace=2
set clipboard=unnamed
set cursorline
set encoding=utf-8
set expandtab
set fileencodings=ucs-bom,utf-8,cp949,korea,iso-2022-kr
set fileformat=unix
set hls
set mouse=a
set number
set ruler
set smartcase
set splitbelow
set splitright
set tabstop=2 shiftwidth=2 softtabstop=2
set termencoding=utf-8

""" Python preferences
autocmd FileType python,coffee setlocal autoindent
autocmd FileType python,coffee setlocal expandtab
autocmd FileType python,coffee setlocal tabstop=4
autocmd FileType python,coffee setlocal softtabstop=4
autocmd FileType python,coffee setlocal shiftwidth=4

""" HTML, JavaScript, CSS, SCSS preferences
autocmd FileType html,javascript,css,scss setlocal autoindent
autocmd FileType html,javascript,css,scss setlocal expandtab
autocmd FileType html,javascript,css,scss setlocal tabstop=2
autocmd FileType html,javascript,css,scss setlocal softtabstop=2
autocmd FileType html,javascript,css,scss setlocal shiftwidth=2

""" Trailing whitespaces
highlight WhitespaceEOL ctermbg=red guibg=red
highlight Normal ctermfg=none ctermbg=none
match WhitespaceEOL /\s\+$/

""" Column limitings
autocmd FileType python highlight OverLength ctermbg=darkred ctermfg=white
autocmd FileType python match OverLength /\%79v.\+/

autocmd BufRead *.js highlight OverLength ctermbg=darkred ctermfg=white
autocmd BufRead *.js match OverLength /\%80v.\+/

autocmd BufRead *.html highlight OverLength ctermbg=darkred ctermfg=white
autocmd BufRead *.html match OverLength /\%100v.\+/

augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
