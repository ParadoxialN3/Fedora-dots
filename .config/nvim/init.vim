if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set showcmd 
set encoding=UTF-8
set ruler
syntax on
filetype plugin indent on

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim'
Plug 'junegunn/fzf'
Plug 'folke/which-key.nvim'
Plug 'romgrk/doom-one.vim'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme doom-one
let g:airline_theme = 'gruvbox'

let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

nnoremap <F6> :call TermToggle(12)<CR>
inoremap <F6> <Esc>:call TermToggle(12)<CR>
tnoremap <F6> <C-\><C-n>:call TermToggle(12)<CR>

tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>

let NERDTreeShowHidden=1

nnoremap <F7> :NERDTreeToggle<CR>
nnoremap <F5> :FZF<CR>
nmap <F8> :TagbarToggle<CR>


