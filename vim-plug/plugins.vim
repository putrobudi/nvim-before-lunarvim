" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Comments
    Plug 'tpope/vim-commentary'


  if exists('g:vscode')
    " Easy motion for VSCode
    " Plug 'asvetliakov/vim-easymotion'
    Plug 'ChristianChiarulli/vscode-easymotion'
    Plug 'machakann/vim-highlightedyank'

  else 

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'joshdick/onedark.vim'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Airline 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Colorizer (starts lagging when opening large file)
    " Plug 'norcalli/nvim-colorizer.lua'
    " Rainbow parenthesis
    Plug 'junegunn/rainbow_parentheses.vim'
    " Startify
    Plug 'mhinz/vim-startify'
    " Sneak
    Plug 'justinmk/vim-sneak'
    " QuickScope
    Plug 'unblevable/quick-scope'
    " Which Key
    Plug 'liuchengxu/vim-which-key'
    " Floaterm
    Plug 'voldikss/vim-floaterm'
    " Snippets
    Plug 'honza/vim-snippets'
    " Codi
    Plug 'metakirby5/codi.vim'
    " Bbye
    Plug 'moll/vim-bbye'
    

  endif    

call plug#end()

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif
