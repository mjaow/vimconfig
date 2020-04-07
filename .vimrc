syntax on
set backspace=indent,eol,start

set number
set nocompatible              " be iMproved, required
filetype off

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nmap <F4> :YcmDiags<CR>
"imap <F6> <C-x><C-o>
"nmap gr <C-t>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
"Bundle 'Blackrush/vim-gocode'
"Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
"Plugin 'tpope/vim-fugitive'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'

call vundle#end()            " required
filetype plugin indent on    " required

let g:vim_markdown_folding_disabled = 1
"let g:go_info_mode = 'guru'
"let g:go_def_mode = 'guru'

let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

"" 开启rust的自动reformat的功能
let g:rustfmt_autosave = 1

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

