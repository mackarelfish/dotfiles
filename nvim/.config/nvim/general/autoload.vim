" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
autocmd BufWritePost ~/.local/src/dwm/config.h !cd ~/.local/src/dwm/; sudo make install && { kill -HUP $(pidof -s dwm) }

autocmd filetype javascriptreact setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd filetype typescriptreact setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd filetype vue setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2

autocmd BufNewFile,BufRead *.{js} if match(getline(1),"React") >= 0 | set filetype=javascriptreact | endif
autocmd BufNewFile,BufRead *.{ts} if match(getline(1),"React") >= 0 | set filetype=typescriptreact | endif

autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart

augroup auto_checktime
  autocmd!
  autocmd FocusGained,BufEnter,CursorHold * silent! checktime
augroup end
