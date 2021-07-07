" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'justinmk/vim-sneak'
Plug 'searleser97/cpbooster.vim'
Plug 'unblevable/quick-scope'
Plug 'adelarsq/vim-matchit'

Plug 'junegunn/fzf', Cond(!exists('g:vscode'), { 'do': { -> fzf#install() } })
Plug 'junegunn/fzf.vim', Cond(!exists('g:vscode'))
Plug 'junegunn/rainbow_parentheses.vim', Cond(!exists('g:vscode'))
Plug 'mg979/vim-visual-multi', Cond(!exists('g:vscode'), {'branch': 'master'})
Plug 'neoclide/coc.nvim', Cond(!exists('g:vscode'), {'branch': 'release'})
Plug 'sheerun/vim-polyglot', Cond(!exists('g:vscode'))
" onedark them similar to vscode
Plug 'joshdick/onedark.vim', Cond(!exists('g:vscode'))
Plug 'vim-airline/vim-airline', Cond(!exists('g:vscode'))
Plug 'vim-airline/vim-airline-themes', Cond(!exists('g:vscode'))
Plug 'norcalli/nvim-colorizer.lua', Cond(!exists('g:vscode'))
Plug 'preservim/nerdcommenter', Cond(!exists('g:vscode'))
Plug 'mhinz/vim-startify', Cond(!exists('g:vscode'))
" `yay -S nerd-fonts-complete` and use one NERD font
Plug 'ryanoasis/vim-devicons', Cond(!exists('g:vscode'))
Plug 'mhinz/vim-signify', Cond(!exists('g:vscode'))

Plug 'brooth/far.vim', Cond(!exists('g:vscode'))
Plug 'akinsho/nvim-toggleterm.lua', Cond(!exists('g:vscode'))
"Plug 'wfxr/minimap.vim'
Plug 'Yggdroot/indentLine', Cond(!exists('g:vscode'))
Plug 'airblade/vim-rooter', Cond(!exists('g:vscode'))
Plug 'rhysd/vim-grammarous', Cond(!exists('g:vscode'))
Plug 'haya14busa/is.vim', Cond(!exists('g:vscode'))
Plug 'tpope/vim-fugitive', Cond(!exists('g:vscode'))
Plug 'sonph/onehalf', Cond(!exists('g:vscode'), { 'rtp': 'vim' })
Plug 'dracula/vim', Cond(!exists('g:vscode'), { 'as': 'dracula' })
Plug 'KeitaNakamura/neodark.vim', Cond(!exists('g:vscode'))
Plug 'mhartington/oceanic-next', Cond(!exists('g:vscode'))

call plug#end()
