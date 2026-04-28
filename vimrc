set number
echo '>^.^<'
let mapleader=","
let maplocalleader=","
imap <c-d> <esc>ddi
imap <c-a> <esc>0i
imap <c-u> <esc>viwUf<space>la
imap <c-e> <esc>$a
nnoremap <c-u> viwUf<space>l

nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap dl O<esc>jddk
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <localleader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <localleader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

inoremap <leader>{ {<cr>}<esc>O
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>


vnoremap " <esc>`<i"<esc>`>la"<esc>  
iabbrev rn return
iabbrev main( main(int argc , char *argv[])

onoremap il( :<c-u>normal!F)vi(<cr>
onoremap al( :<c-u>normal!F)va(<cr>

augroup filetype_html
	autocmd!
	autocmd BufWritePre,BufRead *.html :normal gg=G
	autocmd BufNewFile,BufRead *.html setlocal nowrap
	autocmd FileType html iabbrev html5 <!DOCTYPE html><CR><html lang="en"><CR><head><CR><meta charset="UTF-8"><CR><meta name="viewport" content="width=device-width, initial-scale=1.0"><CR><title>Document</title><CR></head><CR><body><CR><CR></body><CR></html>
augroup END

augroup filetype_py
	autocmd!
	autocmd FileType python iabbrev <buffer> #! #!/usr/bin/env python3
	autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
augroup END
	
augroup filetype_c
	autocmd!
	autocmd FileType c inoremap <buffer> <localleader>c <esc>I//<esc>
	autocmd FileType c inoremap <buffer> #inc #include<><left>
augroup END


