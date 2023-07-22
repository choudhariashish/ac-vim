" https://terminalroot.com/how-to-customize-your-vim-from-zero-to-c-cpp-ubuntu-cinnamon/

call plug#begin('~/.vim/plugged')
" Here will be only plugins

" Sample initial plugin
Plug 'terroo/vim-simple-emoji'
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'MaskRay/ccls'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'preservim/nerdtree'

call plug#end()


map q :quit<CR> " for quit only type q on command mode

" for save using Ctrl + s on command mode
" Need run this command: echo 'stty -ixon' >> ~/.bashrc && exec $SHELL
map <C-s> :write<CR> 


set nu!
set mouse=a
set title
set cursorline
set encoding=utf-8


let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cc', 'h', 'hpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let extension = expand('%:e')

if( extension == "cpp" || extension == "cc" || extension == "h" || extension == "hpp" )
Plug 'ycm-core/YouCompleteMe'
else
Plug 'zxqfl/tabnine-vim'
endif

set relativenumber


nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-r> :Rg<CR>
map <silent> <C-c> "+y
map <silent> <C-v> "+p
