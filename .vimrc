" http://stackoverflow.com/questions/774560/in-vim-how-do-i-get-a-file-to-open-at-the-same-line-number-i-closed-it-at-last-t " 
" Uncomment the following to have Vim jump to the last position when                                                       reopening a file
if has("autocmd")
   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" kill any trailing whitespace on save
autocmd BufWritePre *.tex :%s/\s\+$//e

execute pathogen#infect()
syntax on
filetype plugin indent on

"set fileformat=unix

" for indexing epi

"map OP lBywi\myindex{ea}p
"
"map OQ lBy2wi\myindex{eea}p
"
"map OR lBy3wi\myindex{eeea}p


" make cut and paste work out of the box
set tabstop=4
set shiftwidth=4
set expandtab
set paste
set ai

" show (partial) commands
set showcmd     

" do incremental searches (annoying but handy);
set incsearch 

" showmatch: Show the matching bracket for the last ')'?
set showmatch

" Java specific stuff
 let java_highlight_all=1
 let java_highlight_debug=1
 let java_ignore_javadoc=1
 let java_highlight_functions=1
 let java_mark_braces_in_parens_as_errors=1

