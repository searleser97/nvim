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

let g:is_vim8 = v:version >= 800 ? 1 : 0

" Reuse nvim's runtimepath and packpath in vim
if !has('nvim') && g:is_vim8
  set runtimepath-=~/.vim
    \ runtimepath^=~/.local/share/nvim/site runtimepath^=~/.vim 
    \ runtimepath-=~/.vim/after
    \ runtimepath+=~/.local/share/nvim/site/after runtimepath+=~/.vim/after
  let &packpath = &runtimepath
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'ChristianChiarulli/vscode-easymotion'

Plug 'searleser97/cpbooster.vim', Cond(Except_firenvim())
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'adelarsq/vim-matchit'
Plug 'haya14busa/is.vim'

Plug 'glacambre/firenvim', Cond(Just_firenvim(), {'do': { _ -> firenvim#install(1) }})

Plug 'neoclide/coc.nvim', Cond(Just_nvim(), {'branch': 'release'})
Plug 'mhinz/vim-startify', Cond(Just_nvim())
Plug 'norcalli/nvim-colorizer.lua', Cond(Just_nvim())
Plug 'akinsho/nvim-toggleterm.lua', Cond(Just_nvim())
Plug 'rescript-lang/vim-rescript', Cond(Just_nvim())
Plug 'airblade/vim-rooter', Cond(Just_nvim())

Plug 'junegunn/fzf', Cond(Just_nvim_or_vim(), { 'do': { -> fzf#install() } })
Plug 'junegunn/fzf.vim', Cond(Just_nvim_or_vim())
Plug 'junegunn/rainbow_parentheses.vim', Cond(Just_nvim_or_vim())
Plug 'mg979/vim-visual-multi', Cond(Just_nvim_or_vim(), {'branch': 'master'})
Plug 'sheerun/vim-polyglot', Cond(Just_nvim_or_vim())
" onedark them similar to vscode
Plug 'joshdick/onedark.vim', Cond(Except_vscode())
Plug 'vim-airline/vim-airline', Cond(Just_nvim_or_vim())
Plug 'vim-airline/vim-airline-themes', Cond(Just_nvim_or_vim())
Plug 'preservim/nerdcommenter', Cond(Just_nvim_or_vim())
" `yay -S nerd-fonts-complete` and use one NERD font
Plug 'ryanoasis/vim-devicons', Cond(Just_nvim_or_vim())
Plug 'mhinz/vim-signify', Cond(Just_nvim_or_vim())

Plug 'brooth/far.vim', Cond(Just_nvim_or_vim())
"Plug 'wfxr/minimap.vim'
Plug 'Yggdroot/indentLine', Cond(Just_nvim_or_vim())
Plug 'rhysd/vim-grammarous', Cond(Just_nvim_or_vim())
Plug 'tpope/vim-fugitive', Cond(Just_nvim_or_vim())
Plug 'sonph/onehalf', Cond(Just_nvim_or_vim(), { 'rtp': 'vim' })
Plug 'dracula/vim', Cond(Just_nvim_or_vim(), { 'as': 'dracula' })
Plug 'KeitaNakamura/neodark.vim', Cond(Just_nvim_or_vim())
Plug 'mhartington/oceanic-next', Cond(Just_nvim_or_vim())

call plug#end()
