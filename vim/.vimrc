" vim-plug section
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Options
set ruler
set showcmd
set showmode
set wildmenu
set incsearch
set relativenumber
set number
set shiftwidth=4
set tabstop=4

syntax enable

filetype plugin indent on

" Colorscheme Gruvbox settings
let g:gruvbox_italic = '1'
colorscheme gruvbox
set background=dark

" Vim-airline settings
let g:airline_theme = 'minimalist'

" LSP settigns
let g:lsp_semantic_enabled = '1'
let g:lsp_settings = {
\	'clangd': {
\		'args': ['--enable-config'],	
\	},	
\}

" NERDTree settings
let NERDTreeShowHidden = 1

" Keymappings
let g:mapleader = ','
nmap <Leader>m :tabnext<CR>
nmap <Leader>n :tabprevious<CR>
nmap <Leader>c :tabclose<CR>
nmap <Leader>w :w!<CR>
nmap <Leader>s :source ~/.vimrc<CR>
nmap <Leader><Space> <Esc>:nohlsearch<CR>
nmap <Leader><F1> :call CompileProject()<CR>
imap <Leader><F1> <Esc>:call CompileProject()<CR>
nmap <Leader>on :NERDTreeToggle<CR>
nmap <Leader><C-S> :tabnew ~/.vimrc<CR>

" Autocommands
augroup command_runner
	au!
	autocmd BufWritePost dunstrc !~/.config/dunst/dunst_test.sh
augroup END

""""""""" Custom Functions 
" Customize project compilation process based on compilation system
func! CompileProject()
	exec "w"
	exec "echo '(.vimrc) Configure CompileProject Function\!'"
endfunc
