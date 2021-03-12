source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/coc-extensions.vim
source $HOME/.config/nvim/rainbow.vim
source $HOME/.config/nvim/startify.vim
source $HOME/.config/nvim/quick-scope.vim
source $HOME/.config/nvim/minimap.vim

" themes go after plugins
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/airline.vim

" settings after plugins due to formatoptions problem with polyglot (ftplugin)
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/functions.vim

lua require'plug-colorizer'
lua require'plug-nvim-toggleterm'

