function! Just_nvim()
  return has('nvim') && !exists('g:vscode') && !exists('g:started_by_firenvim')
endfunction

function! Just_vim()
  return !has('nvim')
endfunction

function! Just_vscode()
  return exists('g:vscode')
endfunction

function! Just_firenvim()
  return exists('g:started_by_firenvim')
endfunction

function! Just_nvim_or_vim()
  return Just_nvim() || Just_vim()
endfunction

function! All()
  return Just_vim() || Just_nvim() || Just_vscode() || Just_firenvim()
endfunction

function! Except_firenvim()
  return All() && !Just_firenvim()
endfunction

function! Except_vscode()
  return All() && !Just_vscode()
endfunction

source $HOME/.config/nvim/plugins.vim
" settings after plugins due to formatoptions problem with polyglot (ftplugin)
source $HOME/.config/nvim/settings.vim

source $HOME/.config/nvim/quick-scope.vim
source $HOME/.config/nvim/vim-sneak.vim

if Just_nvim() || Just_vim()
  source $HOME/.config/nvim/rainbow.vim
  "source $HOME/.config/nvim/minimap.vim
  source $HOME/.config/nvim/vim-rooter.vim
  source $HOME/.config/nvim/indentLine.vim
  source $HOME/.config/nvim/grammarous.vim

  source $HOME/.config/nvim/themes/airline.vim
endif

if Just_nvim()
  source $HOME/.config/nvim/coc.vim
  source $HOME/.config/nvim/coc-extensions.vim
  source $HOME/.config/nvim/startify.vim
  " plug-colorizer needs termguicolors to be set before loading it
  " we set it in 'settings.vim'
  lua require'plug-colorizer'
  lua require'plug-nvim-toggleterm'
endif

if Except_vscode()
  " themes go after plugins
  source $HOME/.config/nvim/themes/onedark.vim
endif

if Just_firenvim()
  source $HOME/.config/nvim/firenvim.vim
endif

source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/functions.vim
