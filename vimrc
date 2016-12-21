" Always display the status line
set laststatus=2

" Plugins
if filereadable(expand("~/.vimrc.plugins"))
  source ~/.vimrc.plugins
endif

" Use ag with ack.vim if available
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
  cnoreabbrev ag Ack
  cnoreabbrev aG Ack
  cnoreabbrev Ag Ack
  cnoreabbrev AG Ack
endif

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'

" Local config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
