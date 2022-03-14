### Install NodeJs before everything to avoid errors with coc.nvim

- prefer `NVM` to install node

### Install neovim-nightly

yay -S neovim-nightly-bin

### Install ripgrep for `Far` plugin

```shell
yay -S ripgrep
```

### Install PowerLine fonts (works for Mac & Linux)

```shell
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
```

### Install Nerd Fonts

#### Arch Linux

```shell
yay -S nerd-fonts-complete` and use one NERD font
```

#### MacOS

- Install fonts using `brew install -cask font-{font name}`
- https://gist.github.com/davidteren/898f2dcccd42d9f8680ec69a3a5d350e
- https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts

### Shared clipboard when using WSL on Windows

We use [win32yank](https://github.com/equalsraf/win32yank) to share clipboard between neovim WSL and windows. It makes the `+` registry send the data to windows and viceversa automatically, just run the following commands inside your WSL and it will work magically.

Note: Remember to remove 'ctrl+v' and 'ctrl-c' keybindings from your WSL settings otherwise neovim will not receive those inputs.

```shell
curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
sudo mv /tmp/win32yank.exe /usr/local/bin/win32yank.exe
```

This also helps when using vscode-neovim

### Sync Vim and Neovim configs

```shell
rm -f ~/.vimrc
rm -f ~/.vim

ln -sf ~/.config/nvim/init.vim ~/.config/nvim/vimrc
ln -sf ~/.config/nvim ~/.vim
```

the next thing is to update the runtime in `init.vim` but that is already written in that file
