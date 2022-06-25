" Plugins "
call plug#begin()
  Plug 'sainnhe/sonokai'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'
  Plug 'sheerun/vim-polyglot'
  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'jiangmiao/auto-pairs'
  Plug 'prettier/vim-prettier'
  Plug 'mattn/emmet-vim'
call plug#end()


" Vanilla Config "
syntax on
colorscheme sonokai 
set nu!
set rnu!
set wrap
set tabstop=2
set expandtab
set shiftwidth=2
set nobackup
set nowritebackup
set encoding=utf-8
set fileencoding=utf-8
nmap <TAB> :bn<CR>
nmap <C-x> :x!<CR>
nmap <C-q> :qall!<CR>
nmap <C-s> :wall<CR>


" Themes "
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
let g:airline_theme = 'sonokai'

let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 0
let g:sonokai_diagnostic_line_highlight = 1
let g:sonokai_current_word = 'bold'

" Background Transparent "
highlight Normal guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE


" Plugin Config Section "

" AirLine "
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#enabled = 1


" NerdTree "
nmap <C-a> :NERDTreeToggle<CR>      
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" Prettier "
let g:prettier#quickfix_enabled = 0
let g:prettier#config#tab_width = 2
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync
"autocmd TextChanged,InsertLeave


" Emmet Vim "
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-Space>'
autocmd FileType html,css,scss EmmetInstall
let g:user_emmet_settings = {
\  'variables': {'lang': 'pt-BR'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."\t<link rel=\"stylesheet\" href=\"\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}


