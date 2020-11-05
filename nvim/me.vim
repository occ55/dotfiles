if has("wsl")
    nnoremap <leader>y :call system('/mnt/c/Windows/System32/clip.exe', getreg('"', 1, 1) + (getregtype('"') isnot# 'v' ? [''] : []))<cr>
endif


nnoremap <silent> <leader><space> :noh<cr>:set guicursor=v:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,n-c:ver30<cr>

set guicursor=v:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,n-c:ver30
autocmd CmdlineEnter [/\?] set guicursor=n-c-v:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

set termguicolors
nnoremap S s
nnoremap s :w<cr>

set ve+=onemore


set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

let NERDTreeShowHidden=1
let delimitMate_matchpairs = "(:),[:],{:}"

inoremap <silent> <Esc> <Esc>`^
let g:NERDTreeMapMenu='z'

nnoremap <silent> L :call CocAction('doHover')<CR>
set background=dark
let g:airline_theme = 'onedark' " 'onedark' 'base16' 'powerlineish'
set relativenumber

let g:WebDevIconsOS = 'Darwin'

"onedark.vim override: Set a custom background color in the terminal
" && !has("gui_running")
if (has("autocmd"))
  augroup colors
    autocmd!
    let s:background = { "gui": "#151515", "cterm": "255", "cterm16": "0" }
    "autocmd ColorScheme * call onedark#set_highlight("Normal", { "bg": s:background }) "No `fg` setting
  augroup END
endif
silent! colorscheme onedark
"silent! colorscheme one


" ctrl+w 20 > width degistirme
" zM zm zR zr folds
set runtimepath+=~/.config/nvim/snippets
 