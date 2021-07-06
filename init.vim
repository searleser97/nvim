source $HOME/.config/nvim/plugins.vim

if !exists('g:vscode')
      source $HOME/.config/nvim/coc.vim
      source $HOME/.config/nvim/coc-extensions.vim
      source $HOME/.config/nvim/rainbow.vim
      source $HOME/.config/nvim/startify.vim
      source $HOME/.config/nvim/quick-scope.vim
      "source $HOME/.config/nvim/minimap.vim
      source $HOME/.config/nvim/vim-rooter.vim
      source $HOME/.config/nvim/indentLine.vim
      source $HOME/.config/nvim/grammarous.vim

      " themes go after plugins
      source $HOME/.config/nvim/themes/onedark.vim
      source $HOME/.config/nvim/themes/airline.vim

      " settings after plugins due to formatoptions problem with polyglot (ftplugin)
      source $HOME/.config/nvim/settings.vim

      " plug-colorizer needs termguicolors to be set before loading it
      " we set it in 'settings.vim'
      lua require'plug-colorizer'
      lua require'plug-nvim-toggleterm'
endif

source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/functions.vim
