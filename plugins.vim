" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
" onedark them similar to vscode
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
" `yay -S nerd-fonts-complete` and use one NERD font
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-signify'

Plug 'unblevable/quick-scope'
Plug 'justinmk/vim-sneak'
Plug 'brooth/far.vim'
Plug 'akinsho/nvim-toggleterm.lua'
"Plug 'wfxr/minimap.vim'
Plug 'adelarsq/vim-matchit'
Plug 'Yggdroot/indentLine'
Plug 'searleser97/cpbooster.vim'
Plug 'airblade/vim-rooter'
Plug 'rhysd/vim-grammarous'
Plug 'haya14busa/is.vim'
Plug 'tpope/vim-fugitive'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'KeitaNakamura/neodark.vim'
Plug 'mhartington/oceanic-next'
Plug 'vigoux/LanguageTool.nvim'

call plug#end()
